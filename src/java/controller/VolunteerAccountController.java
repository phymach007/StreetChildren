/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.sun.javafx.css.SizeUnits;
import database.DataAccess;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import model.VolunteerInfo;
import model.userInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
public class VolunteerAccountController {
    @RequestMapping(value = "/VolunteerAccount", method = RequestMethod.GET)
   public ModelAndView VolunteerAccount() {
      return new ModelAndView("VolunteerAccount", "command", new VolunteerInfo());
   }
   
   @RequestMapping(value = "/checkVolunteerInfo",params = "action1", method = RequestMethod.POST)
      public String checkVolunteerInfo(@ModelAttribute("SpringWeb")VolunteerInfo volunteerInfo,@RequestParam("file")ArrayList<MultipartFile> file, ModelMap model) throws IOException {
     
      DataAccess db = new DataAccess();
       System.out.println(volunteerInfo.getName()+"baal");
       System.out.println(volunteerInfo.getAddress()+"saal");
       System.out.println(volunteerInfo.getPassword()+"dsf");
       System.out.println(volunteerInfo.getConfirmpassword()+"dfr");
       System.out.println(volunteerInfo.getContactNo()+"dwq");
       System.out.println(volunteerInfo.getInstitution()+"vcs");
       System.out.println(volunteerInfo.getOccupation()+"zxc");
       System.out.println(volunteerInfo.getEmail()+"cvd");
       System.out.println(volunteerInfo.getOrganization()+"baal amar");
        InputStream inputStream1 = file.get(0).getInputStream();
    if (volunteerInfo.getPassword().equals(volunteerInfo.getConfirmpassword())){
        db.VolunteerAccount(volunteerInfo.getName(),volunteerInfo.getPassword(),volunteerInfo.getAddress() ,volunteerInfo.getContactNo(),volunteerInfo.getOccupation(),volunteerInfo.getInstitution(), 
                volunteerInfo.getEmail(),volunteerInfo.getOrganization(),inputStream1);
   
         return "volunteeraccountsuccessful";
   }
     return"welcome";
      }
}

