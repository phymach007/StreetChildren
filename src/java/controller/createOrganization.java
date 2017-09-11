/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import database.DataAccess;
import javax.resource.spi.AdministeredObject;
import model.AdminInfo;
import model.userInfo;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.scheduling.quartz.AdaptableJobFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ASUS
 */

@Controller
public class createOrganization{
    
  // ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
   
  
    /*  @RequestMapping(value = "/orgCreate", params="action4", method = RequestMethod.)
      public String action4(@ModelAttribute("SpringWeb") ModelMap model) {
         //System.out.println("ami baallllll....................");
    
   }
      @RequestMapping(value = "/checkOrgInfo", params="action1", method = RequestMethod.POST)
      public String action1(@ModelAttribute("SpringWeb") ModelMap model) {
         //System.out.println("ami baallllll....................");
      return "welcome";
   }*/
    
     @RequestMapping(value = "/orgCreate", method = RequestMethod.GET)
   public ModelAndView AdminAccount() {
      return new ModelAndView("AdminAccount", "command", new AdminInfo());
   }
   
   @RequestMapping(value = "/checkOrgInfo",params = "action1", method = RequestMethod.POST)
      public String checkVolunteerInfo(@ModelAttribute("SpringWeb")AdminInfo adminInfo, ModelMap model) {
     
      DataAccess db = new DataAccess();
      
          System.out.println(adminInfo.getName());
          System.out.println(adminInfo.getEmail());
          System.out.println(adminInfo.getPassword());
          System.out.println(adminInfo.getConfirmpassword());
          System.out.println(adminInfo.getContactNo());
          System.out.println(adminInfo.getOccupation());
          System.out.println(adminInfo.getInstitution());
          System.out.println(adminInfo.getOrgName());
          System.out.println(adminInfo.getOrgcontact());
          System.out.println(adminInfo.getOrglocation());
          System.out.println(adminInfo.getInfo());
     
    if (adminInfo.getPassword().equals(adminInfo.getConfirmpassword())){
          db.AdminAccount(adminInfo.getName(),adminInfo.getEmail(),adminInfo.getPassword(),adminInfo.getContactNo(), adminInfo.getOccupation(), adminInfo.getInstitution(),adminInfo.getInfo(),
                  adminInfo.getOrglocation(),adminInfo.getContactNo(),adminInfo.getOrgName());
          System.out.println("name "+adminInfo.getName());
          System.out.println("mail "+adminInfo.getEmail());
          System.out.println("password "+adminInfo.getPassword());
          System.out.println("con pass "+adminInfo.getConfirmpassword());
          System.out.println("con no "+adminInfo.getContactNo());
          System.out.println("occu "+adminInfo.getOccupation());
          System.out.println("ouup "+adminInfo.getInstitution());
          System.out.println("org name "+adminInfo.getOrgName());
          System.out.println("org con"+ adminInfo.getOrgcontact());
          System.out.println("org loca "+adminInfo.getOrglocation());
          System.out.println("org info "+adminInfo.getInfo());
          
          return "start";
   }
     return"welcome";
      }
      
     
      
}