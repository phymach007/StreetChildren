/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import database.DataAccess;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Paths;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.rowset.serial.SerialArray;
import model.PostAndImage;
import model.userInfo;
import org.springframework.http.MediaType;
import org.springframework.jdbc.support.incrementer.H2SequenceMaxValueIncrementer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Lenovo
 */
@Controller
@MultipartConfig
public  class EventShowcasing {
    
     private List<Integer>postidAdmin = new ArrayList<>();
    @RequestMapping(value = "/Post", method = RequestMethod.GET)
   public ModelAndView Post() {
      // model.addAttribute("Post",new PostAndImage());
      return new ModelAndView("Post", "command", new PostAndImage());
   }
   @RequestMapping(value = "/PostShow",params = "action1", method = RequestMethod.POST)
      public String action1(@ModelAttribute("SpringWeb")PostAndImage postAndImage, @RequestParam("file")ArrayList<MultipartFile> file,ModelMap model, HttpServletResponse response, HttpServletRequest request) throws IOException,ServletException{
      //model.addAttribute("text", postAndImage.getPost());
     // model.addAttribute("image",postAndImage.);
     String description = request.getParameter("post"); // Retrieves <input type="text" name="description">
         //file = request.getPart("filename1"); // Retrieves <input type="file" name="file">
           byte[] bytes1 = file.get(0).getBytes();
           System.out.println("byte length1..."+bytes1.length);
           byte[] bytes2 = file.get(1).getBytes();
           byte[] bytes3 = file.get(2).getBytes();
           byte[] bytes4 = file.get(3).getBytes();
           byte[] bytes5 = file.get(4).getBytes();
         System.out.println("byte length2..."+bytes2.length);
         InputStream inputStream1 = file.get(0).getInputStream();
         InputStream inputStream2 = file.get(1).getInputStream();
         InputStream inputStream3 = file.get(2).getInputStream();
         InputStream inputStream4 = file.get(3).getInputStream();
         InputStream inputStream5 = file.get(4).getInputStream();
         //byte[] bytes = file.getBytes();
     //String fileName = Paths.get(file.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
     //InputStream fileContent = file.getInputStream();
     
       System.out.println(postAndImage.getPost());
       System.out.println(postAndImage.getFilename1());
       System.out.println(postAndImage.getFilename2());
       System.out.println(postAndImage.getFilename3());
       System.out.println(postAndImage.getFilename4());
       System.out.println(postAndImage.getFilename5());
       
      DataAccess db = new DataAccess();
      if (postAndImage.getPost()!=null){
          db.postinsert(postAndImage.getPost());
            
      }
      
      if (bytes1.length>0){
          db.imageinsert(inputStream1);
          
      }
      
      if (bytes2.length>0){
          db.imageinsert(inputStream2);
          
      }
      
       if (bytes3.length>0){
          db.imageinsert(inputStream3);
          
      }
       
        if (bytes4.length>0){
          db.imageinsert(inputStream4);
          
      }
         if (bytes5.length>0){
          db.imageinsert(inputStream5);
          
      }
      
      
      
      List<String>post = new ArrayList<String>();
      Map<Integer,List>map = new HashMap<Integer,List>();
      Map<Integer,String>postMap = new HashMap<Integer,String>();
      postMap=db.postget();
      map = db.imageget();
      
      
       /*postMap=db.postget();
       model.addAttribute("post",postMap);*/
       
       // image retrieve......
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
       model.addAttribute("Final", fmap);
       String OrgNameRet = db.OrgNameRet();
        List<userInfo>reviews = new ArrayList<userInfo>();
        reviews=db.ReviewSeen();
              
              for(int j=0;j<reviews.size();j++)
              {
                 userInfo r1=(userInfo)reviews.get(j);
                  System.out.println(r1.getReview());
                  System.out.println(r1.getRate());
              }
              model.addAttribute("reviews1", reviews);
              model.addAttribute("Organization",OrgNameRet);
       
        
      System.out.println("nvfvfkvfbfbgbgb");
      return "admin";
   }
      
      @RequestMapping(value = "/admin",params = "admin", method = RequestMethod.POST)
       public String admin(@ModelAttribute("SpringWeb")PostAndImage postAndImage, ModelMap model){
           
           DataAccess db = new DataAccess();
            List<String>post = new ArrayList<String>();
      Map<Integer,List>map = new HashMap<Integer,List>();
      Map<Integer,String>postMap = new HashMap<Integer,String>();
      Map <Integer,List<String>>commentget = new HashMap<Integer,List<String>>();
      postMap=db.postget();
      map = db.imageget();
      String s1 = db.OrgNameRet();
       commentget= db.commentret();
       
        for (Map.Entry<Integer,List<String>> mp:commentget.entrySet())
         {
             System.out.println(mp.getKey());
             System.out.println(mp.getValue());
         }
     
          
      
      
       /*postMap=db.postget();
       model.addAttribute("post",postMap);*/
       
       // image retrieve......
         String p="";
        List<String>list1 = new ArrayList<String>();
       Map<String , List<String>> fmap= new HashMap<String, List<String>>();
       
       for (Map.Entry<Integer,String> mp:postMap.entrySet())
       {
           postidAdmin.add(mp.getKey());
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
       model.addAttribute("Final", fmap);
       
         List<userInfo>reviews = new ArrayList<userInfo>();
         reviews=db.ReviewSeen();
          System.out.println("AMAMAMAMAMAMAMAMAMAMAMAMAM>>>>>>>>>>>>>>");  
              for(int j=0;j<reviews.size();j++)
              {
                 userInfo r1=(userInfo)reviews.get(j);
                  System.out.println("########### "+r1.getReview());
                  System.out.println("*********** "+r1.getRate());
              }
              
              
             model.addAttribute("reviews1", reviews);
             model.addAttribute("Organization",s1);
             model.addAttribute("commentget",commentget);  
             model.addAttribute("postid",postidAdmin);  
     
        
      System.out.println("nvfvfkvfbfbgbgb");
      return "admin";

           
       }
       
       
       
      
}
