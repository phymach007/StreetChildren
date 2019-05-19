/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Mail.MailSessionBean;
import java.io.IOException;
import java.util.Properties;
import javax.annotation.Resource;
//import javax.ejb.Stateless;
//import javax.enterprise.context.RequestScoped;
//import javax.inject.Inject;
//import javax.inject.Named;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MailSend;
import org.springframework.http.client.support.HttpAccessor;
import org.springframework.jdbc.support.incrementer.H2SequenceMaxValueIncrementer;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.ServletException;

/**
 *
 * @author Lenovo
 */
@Controller

public class MailMail {
    
      
     
   
       //private  Session session;
    
       
       
      @RequestMapping(value = "/pass",params = "mail", method = RequestMethod.POST)
      public String mailsend(@ModelAttribute("SpringWeb")MailSend mailSend , ModelMap model,HttpServletRequest request,HttpServletResponse response )
       throws  ServletException,IOException,Exception{
        
           InitialContext ctx = new InitialContext();
           Session  session = (Session) ctx.lookup("mail/cmdMailSession");
            
               
     
      String to = "ishmamalvi1@gmail.com";              //change accordingly  
      String from = "1305092.am@ugrad.cse.buet.ac.bd";   //change accordingly  
      String host = "localhost";                       //or IP address  
     
     /* Properties props = new Properties();
      props.put("mail.smtp.host","smtp.gmail.com");
      props.put("mail.smtp.socketFactory.port","465");
      props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
      props.put("mail.smtp.auth","true");
      props.put("mail.smtp.port","465");*/
      
      //ID.add("ishmamalvi1@gmail.com");
    //  ID.add("itmamravi1@gmail.com");
    // Session session;
       /*session = Session.getInstance(props,
                
                new javax.mail.Authenticator() { 
                    
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication(){
                        return new PasswordAuthentication("1305092.am@ugrad.cse.buet.ac.bd","python1234");}
                }
                
                
        );*/
        
         //compose the message  
      try{  
         
         MimeMessage message = new MimeMessage(session);  
         message.setFrom(new InternetAddress(from));  
        /* for (int i=0;i<ID.size();i++){
         message.addRecipient(Message.RecipientType.TO,new InternetAddress(ID.get(i)));  
         message.setSubject("Ping");  
         message.setText("Hello, this is example of  email  ");  
  
         // Send message  
         Transport.send(message);  
         System.out.println("message sent successfully....");  
         }*/
         message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
         message.setSubject("Ping");  
         message.setText("Hello, this is example of  email  ");  
          System.out.println(mailSend.getMailsend());
          System.out.println("etotuk paisi.....");
         // Send message  
         Transport.send(message);  
         System.out.println("message sent successfully....");  
             return  "login";
      }
      catch (MessagingException mex) {mex.printStackTrace(); return  "admin";}          
      }
      
     
}
