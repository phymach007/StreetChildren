/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import com.sun.org.apache.bcel.internal.generic.L2D;
import database.DataAccess;
import model.userInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import model.MailSend;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.ejb.EJB;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.*;  
import org.springframework.beans.factory.xml.XmlBeanFactory;  
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.*;  
import Mail.MailSessionBean;
import model.Children;
import model.ChildrenWithParents;
import model.VolunteerInfo;
import javax.annotation.Resource;
/**
 *
 * @author Lenovo
 */
@Controller
public class EventCreateController {
 
    
     @RequestMapping(value = "/admin", method = RequestMethod.GET)
        public ModelAndView admin() {
      return new ModelAndView("admin","command",new MailSend());
   }
        
   @RequestMapping(value = "/post",params = "action1" , method = RequestMethod.POST)
      public String post1(@ModelAttribute("SpringWeb") ModelMap model) {
    
      return "post";
   }
      
      @RequestMapping(value = "/map",params = "map" , method = RequestMethod.POST)
      public String map(@ModelAttribute("SpringWeb") ModelMap model) {
    
      return "map";
   }
      
      
           
   @RequestMapping(value = "/VolunteerList",params = "action4" , method = RequestMethod.POST)
      public String List(@ModelAttribute("list")VolunteerInfo volunteerInfo, ModelMap model) {
          DataAccess db = new DataAccess();
          
        List<VolunteerInfo> v = new ArrayList<>();
       
          v = db.volunteerList();
          model.addAttribute("volunteerlist",v);
         
         for (VolunteerInfo item:v){
              System.out.println(item.getName());
              //model.addAttribute("name",item.)
              System.out.println(item.getAddress());
              System.out.println(item.getContactNo());
              System.out.println(item.getOccupation());
              System.out.println(item.getInstitution());
              System.out.println(item.getEmail());
          }
        
    
      return "volunteerlist";
   }
      
      
      @RequestMapping(value = "/createchildrenlist",params = "action2", method = RequestMethod.POST)
      public String gotochildform(@ModelAttribute("SpringWeb") ModelMap model){
          return "ChildrenForm";
          
      }
      @RequestMapping(value = "/childrenlist",params = "list", method = RequestMethod.POST)
      public String childrenform(@ModelAttribute("SpringWeb")Children children,ModelMap model ){
          
          DataAccess db = new DataAccess();
          int i = db.insertChild(children.getName(), children.getAge());
          
          if (i==1){
              return "admin";
          }
          else {
              return "ChildForm";
          }
          
          
      }
      
      
        @RequestMapping(value = "/ChildrenList",params = "action3" , method = RequestMethod.POST)
      public String List(@ModelAttribute("list")Children children, ModelMap model) {
        DataAccess db = new DataAccess();
          
        List<Children> child = new ArrayList<>();
       
         child = db.GetChildrenList();
          model.addAttribute("childrenlist",child);
         int c=0;
         for (Children item:child){
              System.out.println(item.getName());
              System.out.println(item.getAge());
              System.out.println(item.getParentName());
              //model.addAttribute("name",item.)
             c++;
          }
            System.out.println(c+"childcount.......................................");
    
      //return "childrenlist";
      return "childrenlist";
   }
      
      
       @RequestMapping(value = "/ChildrenListWithParent",params = "action1", method = RequestMethod.POST)
       public  String ParentNameInsert(@ModelAttribute("SpringWeb")ChildrenWithParents childrenWithParents,ModelMap model){
         DataAccess db = new DataAccess();
         int i = db.insertChildwithParents(childrenWithParents.getChildName(),childrenWithParents.getAge(),childrenWithParents.getParentName(),childrenWithParents.getAddress(),
           childrenWithParents.getContactNO(), childrenWithParents.getOccupation(), childrenWithParents.getInstitution());
          if (i==1){
              
              return "admin";
          }
          
          
          return "childrenlist";   
       }
       
}
      

