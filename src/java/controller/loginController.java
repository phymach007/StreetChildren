/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

//import com.sun.xml.rpc.client.BasicService;
import database.DataAccess;
import java.awt.Point;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
//import javax.resource.spi.AdministeredObject;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AdminInfo;
import model.Profile;
import model.Review;
import model.logInPageCursor;
import model.userInfo;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.scheduling.quartz.AdaptableJobFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.codec.*;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
/**
 *
 * @author ASUS
 */

@Controller
public class loginController {
    
  // ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
   private static List<Blob>imageget;
   private static int orgid;
   private static String orgname;
   private List<Integer>postid = new ArrayList<>();
   private List<Integer>postidAdmin = new ArrayList<>();
//   @RequestMapping(value = "/login" ,method = RequestMethod.GET)
//   public ModelAndView login() {
//      return new ModelAndView("login","command",new userInfo());
//   } 
   @RequestMapping(value = "/login1" ,method = RequestMethod.GET)
   public ModelAndView login1() {
      return new ModelAndView("login","command",new logInPageCursor());
   } 
   
   @RequestMapping(value = "/start" ,method = RequestMethod.GET)
   public String start(@ModelAttribute("SpringWeb") ModelMap model) {
     
      return "start";
   }
   
   @RequestMapping(value="/profile",method=RequestMethod.GET)
   public String profile(@ModelAttribute("SpringWeb")Profile profile,ModelMap model){
       List<Profile> p = new ArrayList<Profile>();
       DataAccess db = new DataAccess();
       p=db.volunteerProfile();
       model.addAttribute("Profile",p);
       
       return "profile";
   }
   
   @RequestMapping(value="/volunteerhome",method=RequestMethod.GET)
   public String volunteerhome(@ModelAttribute("SpringWeb") userInfo userinfo,ModelMap model,HttpServletResponse response,HttpServletRequest request){
       
      System.out.println ("Found....");
      ServletUriComponentsBuilder.fromCurrentRequestUri().queryParam("page", 1).toString();
      List<String>post = new ArrayList<String>();
      Map<Integer,String>postMap = new HashMap<Integer,String>();
      Map <Integer,List>map = new HashMap<Integer,List>();
      Map <Integer,List<String>>commentget = new LinkedHashMap<Integer,List<String>>();
      DataAccess db = new DataAccess();
      postMap=db.postget(); 
      map = db.imageget();
      String s1=db.OrgNameRet();
      commentget= db.commentret();
       
      
      
       //******************************************************************//
       String p="";
        List<String>list1 = new ArrayList<String>();
       Map<String , List<String>> fmap= new LinkedHashMap<String, List<String>>();
       
       for (Map.Entry<Integer,String> mp:postMap.entrySet())
       {
             postidAdmin.add(mp.getKey());
             for (Map.Entry<Integer,List> mi:map.entrySet())
             {
                    int pid1 = mp.getKey();
                    int pid2 = mi.getKey();
                     System.out.println("Outside......."+pid1 + " "+ pid2);
                    if (pid1==pid2)
                    {
                        System.out.println(pid1 + " "+ pid2);
                        try {
                            List<Blob> bl = mi.getValue();
                            for (Blob blob : bl){
               
                             byte[] b= new byte[(int)blob.length()];
                             b = blob.getBytes(1,(int)blob.length());
                             String s = new String(org.apache.commons.codec.binary.Base64.encodeBase64(b));
                             list1.add(s);
                             p = mp.getValue();
                             System.out.println(p + " "+ pid1);
                         }
                            
                        }
                        catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                    
             }
            
            System.out.println("ami boss....  "+mp.getValue());
            fmap.put(mp.getValue(), list1);
            list1 = new ArrayList<String>();   
       }
       //fmap.put(p, list1);
        System.out.println ("fmap####################");
        for (Map.Entry<String,List<String>> f1:fmap.entrySet())
         {
             System.out.println(f1.getKey());
//             System.out.println(f.getValue());
         }
       model.addAttribute("Final", fmap);
       model.addAttribute("Organization",s1);
       model.addAttribute("commentget",commentget);  
       model.addAttribute("postid",postidAdmin);  
       //review codes......
       
       
       List<userInfo>reviews = new ArrayList<userInfo>();
       Map<String,String>rev = new HashMap<>();
       reviews=db.ReviewSeen();
              
              for(int j=0;j<reviews.size();j++)
              {
                  userInfo r1=(userInfo)reviews.get(j);
                  System.out.println(r1.getReview());
                  System.out.println(r1.getRate());
                  rev.put(r1.getReview(), r1.getRate());
              }
              
        model.addAttribute("reviews1", reviews);
        model.addAttribute("rev",rev);
             
       
       return "volunteer1";
   }
   
   
   
   @RequestMapping(value="/members",method=RequestMethod.GET)
   public String member(@ModelAttribute("SpringWeb")ModelMap model){
       return "members";
   }
   
   
   @RequestMapping(value = "/orgCreate",params = "action4" , method = RequestMethod.POST)
      public String orgCreate(@ModelAttribute("SpringWeb") ModelMap model) {
    
      return "createOrg";
   }
   
   /*ei function e problem only*/
   
    @RequestMapping(value = "/createaccount", params="action1", method = RequestMethod.POST)
      public String action1(@ModelAttribute("SpringWeb")AdminInfo adminInfo, ModelMap model) {
       //  System.out.println("ami baallllll....................");
        List<String>OrgName = new ArrayList<String>();
       DataAccess db  = new DataAccess();
       OrgName=db.OrgName();
       for (int i=0;i<OrgName.size();i++)
       {
           System.out.println("Now name is :"+OrgName.get(i));
       }
       model.addAttribute("OrgName",OrgName);
      return "createAccount";
      //return "welcome";
   }
      
      
     @RequestMapping(value = "/checkUserInfo", params ="action2", method = RequestMethod.POST)
      public String action2(@ModelAttribute("SpringWeb")userInfo userinfo,ModelMap model,HttpServletResponse response,HttpServletRequest request) {
          
      ServletUriComponentsBuilder.fromCurrentRequestUri().queryParam("page", 1).toString();
      model.addAttribute("username", userinfo.getUsername()); 
      model.addAttribute("password", userinfo.getPassword());
      System.out.println(userinfo.getUsername());
      System.out.println(userinfo.getPassword());
      List<String>post = new ArrayList<String>();
      Map<Integer,String>postMap = new HashMap<Integer,String>();
      Map <Integer,List>map = new HashMap<Integer,List>();
      Map <Integer,List<String>>commentget = new LinkedHashMap<Integer,List<String>>();
      DataAccess db = new DataAccess();
    
      int i=db.AdminLogIn(userinfo.getUsername(), userinfo.getPassword());
      
      postMap=db.postget(); 
      map = db.imageget();
      String s1=db.OrgNameRet();
      commentget= db.commentret();
       
        for (Map.Entry<Integer,List<String>> mp:commentget.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
         
         for (Map.Entry<Integer,String> mp:postMap.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
         
         for (Map.Entry<Integer,List> mp:map.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
         
      
       //******************************************************************//
       String p="";
        List<String>list1 = new ArrayList<String>();
       Map<String , List<String>> fmap= new LinkedHashMap<String, List<String>>();
       
       for (Map.Entry<Integer,String> mp:postMap.entrySet())
       {
             postidAdmin.add(mp.getKey());
             for (Map.Entry<Integer,List> mi:map.entrySet())
             {
                    int pid1 = mp.getKey();
                    int pid2 = mi.getKey();
                     System.out.println("Outside......."+pid1 + " "+ pid2);
                    if (pid1==pid2)
                    {
                        System.out.println(pid1 + " "+ pid2);
                        try {
                            List<Blob> bl = mi.getValue();
                            for (Blob blob : bl){
               
                             byte[] b= new byte[(int)blob.length()];
                             b = blob.getBytes(1,(int)blob.length());
                             String s = new String(org.apache.commons.codec.binary.Base64.encodeBase64(b));
                             list1.add(s);
                             p = mp.getValue();
                             System.out.println(p + " "+ pid1);
                         }
                            
                        }
                        catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                    
             }
            
            System.out.println("ami boss....  "+mp.getValue());
            fmap.put(mp.getValue(), list1);
            list1 = new ArrayList<String>();   
       }
       //fmap.put(p, list1);
        System.out.println ("fmap####################");
        for (Map.Entry<String,List<String>> f1:fmap.entrySet())
         {
             System.out.println(f1.getKey());
//             System.out.println(f.getValue());
         }
       model.addAttribute("Final", fmap);
       model.addAttribute("Organization",s1);
       model.addAttribute("commentget",commentget);  
       model.addAttribute("postid",postidAdmin);  
       //review codes......
       
       
       List<userInfo>reviews = new ArrayList<userInfo>();
       Map<String,String>rev = new HashMap<>();
       reviews=db.ReviewSeen();
              
              for(int j=0;j<reviews.size();j++)
              {
                  userInfo r1=(userInfo)reviews.get(j);
                  System.out.println(r1.getReview());
                  System.out.println(r1.getRate());
                  rev.put(r1.getReview(), r1.getRate());
              }
              
              model.addAttribute("reviews1", reviews);
              model.addAttribute("rev",rev);
              
             
              
              
      if (i==1){
   
          System.out.println(userinfo.getUsername());
          System.out.println(userinfo.getPassword());         
          return "admin";
      }
     
      else if (i==0) return "volunteer1";
      
      else return "loginerror";
   }
      
      
        
     @RequestMapping(value = "/checkUserInfoUpdate", params ="comment", method = RequestMethod.POST)
      public String action2(@ModelAttribute("SpringWeb")Review review, ModelMap model,HttpServletResponse response,HttpServletRequest request) {
      System.out.println ("comment..");
      List<String>post = new ArrayList<String>();
      Map<Integer,String>postMap = new HashMap<Integer,String>();
      Map <Integer,List>map = new HashMap<Integer,List>();
      Map <Integer,List<String>>commentget = new LinkedHashMap<Integer,List<String>>();
      DataAccess db = new DataAccess();
    
      int pil=db.insertcommentAdmin(postidAdmin.get(review.getPostid()),review.getComment());
      
      postMap=db.postget(); 
      map = db.imageget();
      String s1=db.OrgNameRet();
      commentget= db.commentret();
       
        for (Map.Entry<Integer,List<String>> mp:commentget.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
         
         for (Map.Entry<Integer,String> mp:postMap.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
         
         for (Map.Entry<Integer,List> mp:map.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
         
      
       //******************************************************************//
       String p="";
        List<String>list1 = new ArrayList<String>();
       Map<String , List<String>> fmap= new LinkedHashMap<String, List<String>>();
       
       for (Map.Entry<Integer,String> mp:postMap.entrySet())
       {
             //postidAdmin.add(mp.getKey());
             for (Map.Entry<Integer,List> mi:map.entrySet())
             {
                    int pid1 = mp.getKey();
                    int pid2 = mi.getKey();
                      
                    if (pid1==pid2)
                    {
                        System.out.println(pid1 + " "+ pid2);
                        try {
                            List<Blob> bl = mi.getValue();
                            for (Blob blob : bl){
               
                             byte[] b= new byte[(int)blob.length()];
                             b = blob.getBytes(1,(int)blob.length());
                             String s = new String(org.apache.commons.codec.binary.Base64.encodeBase64(b));
                             list1.add(s);
                             p = mp.getValue();
                             System.out.println(p + " "+ pid1);
                         }
                            
                        } catch (SQLException e) {
                            e.printStackTrace();
                            
                        }
                    }
                    
             }
            
            //System.out.println("ami boss....  "+mp.getValue());
            fmap.put(mp.getValue(), list1);
            list1 = new ArrayList<String>();   
       }
       //fmap.put(p, list1);
       System.out.println ("fmap");
        for (Map.Entry<String,List<String>> f:fmap.entrySet())
         {
             System.out.println(f.getKey());
             System.out.println(f.getValue());
         }
       model.addAttribute("Final", fmap);
       model.addAttribute("Organization",s1);
       model.addAttribute("commentget",commentget);  
       model.addAttribute("postid",postidAdmin);  
       //review codes......
       
       
       List<userInfo>reviews = new ArrayList<userInfo>();
       reviews=db.ReviewSeen();
              
              for(int j=0;j<reviews.size();j++)
              {
                 userInfo r1=(userInfo)reviews.get(j);
                  System.out.println(r1.getReview());
                  System.out.println(r1.getRate());
              }
              model.addAttribute("reviews1", reviews);
     
         return "admin";
   }
      
    @RequestMapping(value = "/login",params = "start", method = RequestMethod.GET)
      public String init(@ModelAttribute("SpringWeb")AdminInfo adminInfo,ModelMap model) {
          System.out.println ("Logout");
          DataAccess db = new DataAccess();
          List<String>name = new ArrayList<String>();
          name = db.OrgName();
          System.out.println("org Name.......................");
          for (int i=0; i<name.size();i++)
          {
              System.out.println(name.get(i));
          }
          model.addAttribute("OrgName", name);
          
          /***********************login cursor***************************/
          List<String> list =new ArrayList<>();
          List<logInPageCursor>cursor = new ArrayList<logInPageCursor>();
          cursor=db.UserView(); 
      System.out.println("curser size "+ " "+cursor.size());
          for (int i=0; i<cursor.size();i++)
          {
              
              logInPageCursor l = cursor.get(i);
              System.out.println("############   "+l.getOrganizationName()+" "+l.getPost()+" "+l.getBlob());
          }
          model.addAttribute("cursor",cursor);
          model.addAttribute("list",list);
      return "login";
   } 
      
      
      
   
        
      
      
      
  @RequestMapping(value = "/login", method = RequestMethod.GET)
      public String init1(@ModelAttribute("SpringWeb")AdminInfo adminInfo,ModelMap model) {
          System.out.println ("Logout");
          DataAccess db = new DataAccess();
          List<String>name = new ArrayList<String>();
          name = db.OrgName();
          System.out.println("org Name.......................");
          for (int i=0; i<name.size();i++)
          {
              System.out.println(name.get(i));
          }
          model.addAttribute("OrgName", name);
          
          /***********************login cursor***************************/
          List<String> list =new ArrayList<>();
          List<logInPageCursor>cursor = new ArrayList<logInPageCursor>();
          cursor=db.UserView(); 
      System.out.println("curser size "+ " "+cursor.size());
          for (int i=0; i<cursor.size();i++)
          {
              
              logInPageCursor l = cursor.get(i);
              System.out.println("############   "+l.getOrganizationName()+" "+l.getPost()+" "+l.getBlob());
          }
          model.addAttribute("cursor",cursor);
          model.addAttribute("list",list);
      return "login";
   } 
      
      
      
   
      
      
   
       @RequestMapping(value = "/userview", params = "mybutton", method = RequestMethod.POST)
       public String userview( ModelMap model,@RequestParam("mybutton")String user)
       {
          
          //System.out.println("ami ......"+userSelect.getOrgName());
           System.out.println("ami ekta....  "+user); 
          DataAccess db = new DataAccess();
          orgid= db.user(user);
          orgname=user;
          
      List<String>post = new ArrayList<String>();
      Map<Integer,String>postMap = new HashMap<Integer,String>();
      Map <Integer,List>map = new HashMap<Integer,List>();
      Map <Integer,List<String>>commentget = new HashMap<Integer,List<String>>();
      String str="";
      postMap=db.postget(); 
      map = db.imageget();
      commentget = db.commentret();
      str= db.getOrganizationInfo(orgname);
       
         for (Map.Entry<Integer,String> mp:postMap.entrySet())
         {
             System.out.println("Key is : "+mp.getKey());
             System.out.println("Value is : "+mp.getValue());
             
         }
         
         for (Map.Entry<Integer,List> mp:map.entrySet())
         {
             System.out.println("image key is :"+mp.getKey());
             System.out.println("Value is :"+mp.getValue());
             
             
         }
         
         
      
       //******************************************************************//
        String p="";
        List<String>list1 = new ArrayList<String>();
        Map<String , List<String>> fmap= new HashMap<String, List<String>>();
       
        for (Map.Entry<Integer,String> mp:postMap.entrySet())
        {
             postid.add(mp.getKey());
             for (Map.Entry<Integer,List> mi:map.entrySet())
             {
                    int pid1 = mp.getKey();
                    int pid2 = mi.getKey();
                      
                    if (pid1==pid2)
                    {
                        System.out.println(pid1 + " "+ pid2);
                        try {
                            List<Blob> bl = mi.getValue();
                            for (Blob blob : bl){
               
                             byte[] b= new byte[(int)blob.length()];
                             b = blob.getBytes(1,(int)blob.length());
                             String s = new String(org.apache.commons.codec.binary.Base64.encodeBase64(b));
                             list1.add(s);
                             p = mp.getValue();
                             System.out.println(p + " "+ pid1);
                         }
                            
                        } catch (SQLException e) {
                            e.printStackTrace();
                            
                        }
                    }
                    
              }
            
            //System.out.println("ami boss....  "+mp.getValue());
            fmap.put(mp.getValue(), list1);
            list1 = new ArrayList<String>();   
       }
       //fmap.put(p, list1);
      //review codes.......
           
          
         model.addAttribute("Final1", fmap);
         model.addAttribute("orgname",user);
         model.addAttribute("commentget",commentget);  
          model.addAttribute("postid",postid);  
          model.addAttribute("Info", str);
      
         
           return "newjsp";
       }
       
       
       @RequestMapping(value = "/userviewupdate", params = "comment", method = RequestMethod.POST)
       public String userview(@ModelAttribute("SpringWeb")Review review,ModelMap model)
       {
           
           DataAccess db = new DataAccess();
           int j=db.insertcomment(orgid,postid.get(review.getPostid()),review.getComment());
          
           // Copy part...............
            List<String>post = new ArrayList<String>();
           Map<Integer,String>postMap = new HashMap<Integer,String>();
           Map <Integer,List>map = new HashMap<Integer,List>();
           Map <Integer,List<String>>commentget = new HashMap<Integer,List<String>>();
          
           postMap=db.postget(); 
           map = db.imageget();
           commentget = db.commentret();
           
       
         for (Map.Entry<Integer,String> mp:postMap.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
         
         for (Map.Entry<Integer,List> mp:map.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
         
      
       //******************************************************************//
       String p="";
       List<String>list1 = new ArrayList<String>();
       Map<String , List<String>> fmap= new HashMap<String, List<String>>();
       
       for (Map.Entry<Integer,String> mp:postMap.entrySet())
       {
             for (Map.Entry<Integer,List> mi:map.entrySet())
             {
                    int pid1 = mp.getKey();
                    int pid2 = mi.getKey();
                      
                    if (pid1==pid2)
                    {
                        System.out.println(pid1 + " "+ pid2);
                        try {
                            List<Blob> bl = mi.getValue();
                            for (Blob blob : bl){
               
                             byte[] b= new byte[(int)blob.length()];
                             b = blob.getBytes(1,(int)blob.length());
                             String s = new String(org.apache.commons.codec.binary.Base64.encodeBase64(b));
                             list1.add(s);
                             p = mp.getValue();
                             System.out.println(p + " "+ pid1);
                         }
                            
                        } catch (SQLException e) {
                            e.printStackTrace();
                            
                        }
                    }
                    
             }
            
            //System.out.println("ami boss....  "+mp.getValue());
            fmap.put(mp.getValue(), list1);
            list1 = new ArrayList<String>();   
       }
       //fmap.put(p, list1);
      //review codes.......
      
         model.addAttribute("Final1", fmap);
         model.addAttribute("orgname",orgname);
         model.addAttribute("commentget",commentget);
         model.addAttribute("postid",postid);  
        
           return "newjsp";
       }
       
        @RequestMapping(value = "/userview", params = "goback", method = RequestMethod.POST)
       public String userview(ModelMap model)
       {
           
           DataAccess db = new DataAccess();
        
          
           // Copy part...............
            List<String>post = new ArrayList<String>();
           Map<Integer,String>postMap = new HashMap<Integer,String>();
           Map <Integer,List>map = new HashMap<Integer,List>();
           Map <Integer,List<String>>commentget = new HashMap<Integer,List<String>>();
          
           postMap=db.postget(); 
           map = db.imageget();
           commentget = db.commentret();
           
       
         for (Map.Entry<Integer,String> mp:postMap.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
         
         for (Map.Entry<Integer,List> mp:map.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
         
      
       //******************************************************************//
       String p="";
       List<String>list1 = new ArrayList<String>();
       Map<String , List<String>> fmap= new HashMap<String, List<String>>();
       
       for (Map.Entry<Integer,String> mp:postMap.entrySet())
       {
             for (Map.Entry<Integer,List> mi:map.entrySet())
             {
                    int pid1 = mp.getKey();
                    int pid2 = mi.getKey();
                      
                    if (pid1==pid2)
                    {
                        System.out.println(pid1 + " "+ pid2);
                        try {
                            List<Blob> bl = mi.getValue();
                            for (Blob blob : bl){
               
                             byte[] b= new byte[(int)blob.length()];
                             b = blob.getBytes(1,(int)blob.length());
                             String s = new String(org.apache.commons.codec.binary.Base64.encodeBase64(b));
                             list1.add(s);
                             p = mp.getValue();
                             System.out.println(p + " "+ pid1);
                         }
                            
                        } catch (SQLException e) {
                            e.printStackTrace();
                            
                        }
                    }
                    
             }
            
            //System.out.println("ami boss....  "+mp.getValue());
            fmap.put(mp.getValue(), list1);
            list1 = new ArrayList<String>();   
       }
       //fmap.put(p, list1);
      //review codes.......
      
         model.addAttribute("Final1", fmap);
         model.addAttribute("orgname",orgname);
         model.addAttribute("commentget",commentget);
         model.addAttribute("postid",postid);  
        
           return "newjsp";
       }
       
       
      
}