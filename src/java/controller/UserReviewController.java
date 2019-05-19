/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import database.DataAccess;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import model.Review;
import model.UserReview;
import model.userInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Lenovo
 */
@Controller
public class UserReviewController {
    
     @RequestMapping(value = "/Review", params ="reviewbutton", method = RequestMethod.POST)
      public String action(@ModelAttribute("SpringWeb")Review review,ModelMap model,@RequestParam("review")String rev,@RequestParam("rate")String rate) {
          
          List<Review>reviews = new ArrayList<Review>();
            model.addAttribute("saal", "Alvi");
          int r = Integer.parseInt(rate);
          DataAccess db = new DataAccess();
          int i =db.InsertReview(rev,r);
          
          if (i==1)
          {
              List<userInfo>reviews1 = new ArrayList<userInfo>();
             reviews1=db.ReviewSeen();
              
              for(int j=0;j<reviews1.size();j++)
              {
                 userInfo r1=(userInfo)reviews1.get(j);
                  System.out.println(r1.getReview());
                  System.out.println(r1.getRate());
              }
              
              model.addAttribute("reviews", reviews1);
           
               return "userreview";
          }
          
         
          else
          {
              return "userview";
          }
    
     
    }
      
      
}
