/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import database.DataAccess;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialArray;
import model.PostAndImage;
import model.userInfo;
import org.springframework.jdbc.support.incrementer.H2SequenceMaxValueIncrementer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Lenovo
 */
@Controller

public  class EventShowcasing {
    @RequestMapping(value = "/Post", method = RequestMethod.GET)
   public ModelAndView Post() {
      // model.addAttribute("Post",new PostAndImage());
      return new ModelAndView("Post", "command", new PostAndImage());
   }
   @RequestMapping(value = "/PostShow",params = "action1", method = RequestMethod.POST)
      public String action1(@ModelAttribute("SpringWeb")PostAndImage postAndImage, ModelMap model) {
      //model.addAttribute("text", postAndImage.getPost());
     // model.addAttribute("image",postAndImage.);
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
      
      if (postAndImage.getFilename1()!=null){
          db.imageinsert(postAndImage.getFilename1());
          
      }
      
      if (postAndImage.getFilename2()!=null){
          db.imageinsert(postAndImage.getFilename2());
          
      }
      
       if (postAndImage.getFilename3()!=null){
          db.imageinsert(postAndImage.getFilename3());
          
      }
       
        if (postAndImage.getFilename4()!=null){
          db.imageinsert(postAndImage.getFilename4());
          
      }
         if (postAndImage.getFilename5()!=null){
          db.imageinsert(postAndImage.getFilename5());
          
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
     
       
        
      System.out.println("nvfvfkvfbfbgbgb");
      return "admin";
   }
      
      @RequestMapping(value = "/admin",params = "admin", method = RequestMethod.POST)
       public String admin(@ModelAttribute("SpringWeb")PostAndImage postAndImage, ModelMap model){
           
           DataAccess db = new DataAccess();
            List<String>post = new ArrayList<String>();
      Map<Integer,List>map = new HashMap<Integer,List>();
      Map<Integer,String>postMap = new HashMap<Integer,String>();
      postMap=db.postget();
      map = db.imageget();
      String s1 = db.OrgNameRet();
          
      
      
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
       
         List<userInfo>reviews = new ArrayList<userInfo>();
       reviews=db.ReviewSeen();
              
              for(int j=0;j<reviews.size();j++)
              {
                 userInfo r1=(userInfo)reviews.get(j);
                  System.out.println(r1.getReview());
                  System.out.println(r1.getRate());
              }
              model.addAttribute("reviews1", reviews);
              model.addAttribute("Organization",s1);
     
        
      System.out.println("nvfvfkvfbfbgbgb");
      return "admin";

           
       }
       
       
       
      
}
