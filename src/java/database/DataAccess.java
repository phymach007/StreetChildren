/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import com.sun.javafx.scene.control.skin.VirtualFlow;
import com.sun.xml.ws.commons.ha.HaContext;
import controller.VolunteerAccountController;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;
import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javafx.scene.layout.VBox;
import javax.xml.registry.infomodel.Organization;
import javax.xml.registry.infomodel.User;
import model.Children;
import model.Review;
import model.VolunteerInfo;
import model.logInPageCursor;
import model.userInfo;
import org.hibernate.validator.internal.util.logging.Log;
import org.springframework.beans.factory.support.ChildBeanDefinition;
import sun.security.rsa.RSACore;


/**
 *
 * @author Lenovo
 */
public class DataAccess {

    private  String url="jdbc:mysql://localhost:3306/street_children_database?user=root";
    private  String password="alvi";
    private  String username="root";
    Connection connection= null;
    private static int Organization_ID;
    private static int post_ID;
    
    
    public DataAccess() {
        try 
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            //String url = "jdbc:mysql://localhost:3306/street_children_database?user=root";
            connection = DriverManager.getConnection(url,username,password);
          
            if (connection!=null)System.out.println("connection successfully established");
            else {System.out.println("mara ......");}
            
        } catch (ClassNotFoundException | SQLException ex) {Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);}
       
    }
    
    
    
     public int AdminLogIn(String admin_name, String password){
      
           try {
               
               String sqlString = "select * from users where user_name = ? and password = ?";
               PreparedStatement ps = connection.prepareStatement(sqlString);
               ps.setString(1, admin_name);
               ps.setString(2, password);
               ResultSet rs = ps.executeQuery();
               
               if(rs.next())
                {
                    int i= rs.getInt(3);
                    Organization_ID = rs.getInt(4);
                    System.out.println(Organization_ID);
                    System.out.println("creted.....");
                    return i;
                }
           System.out.println("mara kaici");
            return -1;
        }
         catch (Exception e) {
             e.printStackTrace();
              return  -1;
        }
   
    }
     
     
     
     //volunteer info insert....
     public int VolunteerAccount(String Name,String Password, String Address,String ContactNo, String Occupation,String Institution,String Email, String Organization)
    {
        try
        {
            String insertCommand = "insert into volunteers (volunteer_name,volunteer_password,volunteer_address,volunteer_contactno,volunteer_occupation,volunteer_institution,volunteer_email,organization_name)values(?,?,?,?,?,?,?,?)";
            String insertCommand1 = "insert into users (user_name,password,flag,organization_id) values(?,?,?,?)";
            PreparedStatement stmt =  connection.prepareStatement(insertCommand);
            PreparedStatement stmt1 = connection.prepareStatement(insertCommand1);
            stmt.setString(1, Name);       
            stmt.setString(2, Password);
            stmt.setString(3, Address);
            stmt.setString(4, ContactNo);
            stmt.setString(5, Occupation);
            stmt.setString(6, Institution);
            stmt.setString(7, Email);
            stmt.setString(8, Organization);
            
           /* stmt1.setString(1, Name);
            stmt1.setString(2, Password);
            stmt1.setInt(3, 1);*/
            
            
             //System.out.println(CustomerName+"id"+CustomerID);
             int i = stmt.executeUpdate();
            // int j = stmt1.executeUpdate();
             if(i==1)
            {
                System.out.println("first query paisi");
                int k=find1(Organization);
                 System.out.println("organization id "+ k);
                 stmt1.setString(1, Name);
                 stmt1.setString(2, Password);
                 stmt1.setInt(3,0);
                 stmt1.setInt(4,k);
                 int j = stmt1.executeUpdate();
                 if (j==1){
                      System.out.println("created");
                      return 1;
                 }
            }
            //System.out.println("mara kaici");
            return 0;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return 0;
        }       
    }
     
     
      public int find1(String name){
         try {
             String selectString = "select organization_id from admin where organization_name=?";
             PreparedStatement ps = connection.prepareStatement(selectString);
             ps.setString(1, name);
           
             
             ResultSet rs = ps.executeQuery();
             if (rs.next()){
                 
                 System.out.println("success");
                 int id = rs.getInt("organization_id");
                 return  id;
             }
             System.out.println("mara khaci find1 funtion e");
             return -1;
         } catch (Exception e) {
             e.printStackTrace();
             return -1;
         }
         
     }
    
     
     //admin information insertion....
      
     public int AdminAccount(String Name,String Email,String Password,String ContactNo, String Occupation,String Institution,String info, String location, String contactno, String name)
    {
        try
        {
            String insertCommand = "insert into admin (admin_name,admin_email,admin_password,contact_no,occupation,institution,organization_info,organization_location,organization_contactno,organization_name)values(?,?,?,?,?,?,?,?,?,?)";
            String insertCommand1 = "insert into users (user_name,password,flag,organization_id) values(?,?,?,?)";
            PreparedStatement stmt =  connection.prepareStatement(insertCommand);
            PreparedStatement stmt1 = connection.prepareStatement(insertCommand1);
            stmt.setString(1, Name);       
            stmt.setString(2, Email);
            stmt.setString(3, Password);
            stmt.setString(4, ContactNo);
            stmt.setString(5, Occupation);
            stmt.setString(6, Institution);
            stmt.setString(7, info);
            stmt.setString(8, location);
            stmt.setString(9, contactno);
            stmt.setString(10, name);
            
            
            
           /* stmt1.setString(1, Name);
            stmt1.setString(2, Password);
            stmt1.setInt(3, 1);*/
            
            
            
             //System.out.println(CustomerName+"id"+CustomerID);
             int i = stmt.executeUpdate();
             
            // int j = stmt1.executeUpdate();
            if(i==1)
            {
                System.out.println("first query paisi");
                  int k=find(Name, Password);
                 System.out.println("organization id "+ k);
                  stmt1.setString(1, Name);
                  stmt1.setString(2, Password);
                  stmt1.setInt(3, 1);
                  stmt1.setInt(4,k);
                 int j = stmt1.executeUpdate();
                 if (j==1){
                      System.out.println("creted");
                      return 1;
                 }
                
            }
            //System.out.println("mara kaici");
            return 0;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return 0;
        }       
    }
     
     public int find(String name, String password){
         try {
             String selectString = "select organization_id from admin where (admin_name=? and admin_password=?)";
             PreparedStatement ps = connection.prepareStatement(selectString);
             ps.setString(1, name);
             ps.setString(2, password);
             
             ResultSet rs = ps.executeQuery();
             if (rs.next()){
                 
                 System.out.println("success");
                 int id = rs.getInt("organization_id");
                 return  id;
             }
             System.out.println("mara khaci find funtion e");
             return -1;
         } catch (Exception e) {
             e.printStackTrace();
             return -1;
         }
         
     }
     
     
   public int getpostid()
   {
       int pid=-1;
       try {
            String sqlString = "select MAX(postid) from post where organization_id=?";
           PreparedStatement stmt  = connection.prepareStatement(sqlString);
           stmt.setInt(1,Organization_ID);
           ResultSet rs = stmt.executeQuery();
           
           if (rs.next())
           {
               pid = rs.getInt(1);
               
           }

       } catch (Exception e) {
           e.printStackTrace();
       }
       return pid;
             
   }
     
     
   public int postinsert(String givepost){
       try {
           String insert = "insert into post (givepost,organization_id) values (?,?)";
           PreparedStatement stmt  = connection.prepareStatement(insert);
           
           stmt.setString(1, givepost);
           stmt.setInt(2, Organization_ID);
           
           
           
           int i = stmt.executeUpdate();
            if(i==1)
            {
                int p = getpostid();
                if (p!=-1)
                {
                    post_ID=p;
                }
                       
                System.out.println("creted");
                return 1;
            }
            //System.out.println("mara kaici");
            return 0;
           
           
           
       } catch (Exception e) {
           e.printStackTrace();
            return 0;
       }
   }
   
 
   
  public int imageinsert(String filename){
       try {
           String insert = "insert into photo (givephoto,organization_id,post_id) values (?,?,?)";
           PreparedStatement stmt  = connection.prepareStatement(insert);
           
            File file = new File(filename);
            FileInputStream input = new FileInputStream(file);
            
             stmt.setBinaryStream(1,input);
             stmt.setInt(2, Organization_ID);
             stmt.setInt(3, post_ID);
           //stmt.setBlob(1, giveimage);
           int i= stmt.executeUpdate();
           
           if(i==1)
            {
                System.out.println("image is inserted......");
                return 1;
            }
            System.out.println("mara kaici");
            return 0;
                
       } catch (Exception e) {
           e.printStackTrace();
            return 0;
       }
            
   }
   
    public Map <Integer,List> imageget(){
        Blob image = null;
        byte [] imgData = null;
        int i=0,j=0,k=0;
       List<Blob>imageget= new ArrayList<Blob>();
       Map <Integer,List>map = new HashMap<Integer,List>();
        try {
            
           String sqlString = "select givephoto,post_id from photo where organization_id=?";
           PreparedStatement stmt = connection.prepareStatement(sqlString);
           stmt.setInt(1, Organization_ID);
           ResultSet rs = stmt.executeQuery();
           int id=-1;
           if (rs.next())
           {
              id = rs.getInt("post_id");
           }
           
          ResultSet rs1 = stmt.executeQuery();
           while(rs1.next()){
               int id1 = rs1.getInt("post_id");
               
                if (id == id1)
                {
                    image = rs1.getBlob("givephoto");
               
                    // map.put(rs.getInt("post_id"),image);
                    imageget.add(image);
                    image = null;
                    //id=id1;
                    i++;
                }
                else
                {
                    j++;
                    
                    map.put(id, imageget);
                    id=id1;
                    imageget = new ArrayList<Blob>();
                     image = rs1.getBlob("givephoto");
               
                    // map.put(rs.getInt("post_id"),image);
                    imageget.add(image);
                    image = null;
                    
                }        
            
           }
           map.put(id, imageget);
               //System.out.println(i);  
           System.out.println("image is retrieved......."+" "+i+" "+j);
           
                   // return imageget;
                  
            
        } 
       
           
        catch (Exception e) {
            
            e.printStackTrace();
              //return  imageget;
        }
         return map;
        
    }
    
    public Map<Integer,String> postget(){
        
        List<String>post = new ArrayList<String>();
        Map<Integer,String>postMap = new HashMap<Integer,String>();
        try {
            String sqlString = "select postid,givepost,postdate from post where organization_id = ?";
             PreparedStatement stmt = connection.prepareStatement(sqlString);
             stmt.setInt(1, Organization_ID);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                   
                   //post.add(rs.getString("givepost"));
                   postMap.put(rs.getInt("postid"),rs.getString("givepost")+ "     "+rs.getString("postdate"));
                   
                   System.out.println("post is inserted into the list.....");
                
            }
            System.out.println("mara khai nai.....");
            //return post;
           
            
        } catch (Exception e) {
            e.printStackTrace();
            //return post;
        }
        return postMap;
    }
    
    
    public List<String> EmailIDAccess(){
        List<String>ID = new ArrayList<String>();
        try {
            String sqlString = "select volunteer_email from volunteers";
            PreparedStatement stmt = connection.prepareStatement(sqlString);
            ResultSet rs = stmt.executeQuery();
           
           while (rs.next()){
               ID.add(rs.getString("volunteer_email"));
                 System.out.println("created");
                  
               
           }
            System.out.println("mara kainai");
            return ID;
           
            
        } catch (Exception e) {
            e.printStackTrace();
            return ID;
        }
    }
    
    public String OrganizationNameFind(){
        
        try {
            String sqlString = "select organization_name from admin where organization_id=?";
            PreparedStatement stmt = connection.prepareStatement(sqlString);
            stmt.setInt(1, Organization_ID);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
               String s = rs.getString("organization_name");
                System.out.println("got the name "+s);
               return s;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
        return null;
        
    }
    
    public List<VolunteerInfo>volunteerList(){
         List<VolunteerInfo> v = new ArrayList<>();
        try {
           
            String s = OrganizationNameFind();
            String sqlString = " select volunteer_name, volunteer_address,volunteer_contactno,volunteer_occupation,volunteer_institution,volunteer_email from volunteers where organization_name = ?";
                  
            PreparedStatement stmt = connection.prepareStatement(sqlString);
            stmt.setString(1,s);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                String name = rs.getString("volunteer_name");
                String Address = rs.getString("volunteer_address");
                String Contact = rs.getString("volunteer_contactno");
                String occupation = rs.getString("volunteer_occupation");
                String institution = rs.getString("volunteer_institution");
                String email = rs.getString("volunteer_email");
                System.out.println(name+" "+Address+" "+Contact+" "+occupation+" "+institution+" "+email);
                VolunteerInfo volunteerInfo = new VolunteerInfo(name, Address, Contact, occupation, institution, email);
                v.add(volunteerInfo);
            }
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return  v;
    }
    
    public int insertChild(String name,String age){
        try {
            String sqlString = "insert into children (children_name,children_age,organization_id) values(?,?,?)";
            PreparedStatement stmt = connection.prepareStatement(sqlString);
            stmt.setString(1, name);
            stmt.setString(2, age);
            stmt.setInt(3, Organization_ID);
            int i = stmt.executeUpdate();
            
            
             if (i==1){
                 System.out.println("child info is inserted");
                 return 1;
                 
             }
             else{
                 System.out.println("dhuke nai");
                 return 0;
             }
            
        } catch (Exception e) {
            e.printStackTrace();
            return  0;
        }
    }
    
    public int insertChildwithParents(String childname,String age, String parentname,String Address,String ContactNo, String Occupation,String Institution){
        try {
            String sqlString = "insert into childrenwithparents (children_name,children_age,parent_name,parent_address,parent_contactno,parent_occupation,parent_institution,organization_id) values (?,?,?,?,?,?,?,?)";
                  
            
            String sqlUpdate = "update children set parent_name=? where children_name=?";
            
            PreparedStatement stmt = connection.prepareStatement(sqlString);
            PreparedStatement stmt1 = connection.prepareStatement(sqlUpdate);
            
            stmt.setString(1, childname);
            stmt.setString(2, age);
            stmt.setString(3, parentname);
            stmt.setString(4, Address);
            stmt.setString(5, ContactNo);
            stmt.setString(6, Occupation);
            stmt.setString(7, Institution);
            stmt.setInt(8, Organization_ID);
            
            stmt1.setString(1, parentname);
             stmt1.setString(2,childname);
            int i = stmt.executeUpdate();
            int j= stmt1.executeUpdate();
            
            if (i==1&&j==1){
                System.out.println("kam hoice mama...");
                return 1;
            }
            System.out.println("putu mara khaisi....");
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    
        
    }
    
    
    
     public List<Children> GetChildrenList(){
         
         List<Children>child= new ArrayList<Children>();
         try {
             String sqlString = "select * from children where organization_id=?";
             PreparedStatement stmt = connection.prepareStatement(sqlString);
             stmt.setInt(1, Organization_ID);
             
               ResultSet rs = stmt.executeQuery();
               while (rs.next()) {
                   String name = rs.getString("children_name");
                   String age = rs.getString("children_age");
                   String parent = rs.getString("parent_name");
                   Children children = new Children(name, age , parent);
                   child.add(children);
             }
             
             
         } catch (Exception e) {
             e.printStackTrace();
         }
           return child;
        
   }
     public List<String>OrgName(){
         List<String>name = new ArrayList<String>();
         try {
         String sqlString = "select organization_name from admin";
         PreparedStatement stmt = connection.prepareStatement(sqlString);
         ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                name.add(rs.getString("organization_name"));
                
            }
         } catch (Exception e) {
             e.printStackTrace();
         }
        return name;
     }
     public  int maxid (){
         int i=0;
         try {
           String sqlString = "select MAX(organization_id) from admin";
           PreparedStatement stmt = connection.prepareStatement(sqlString);
           ResultSet rs = stmt.executeQuery();
           if (rs.next()) {
               i = rs.getInt("MAX(organization_id)");
               
           }
         } catch (Exception e) {
             e.printStackTrace();
         }
          return i;
           
     }
     
    public List<logInPageCursor>UserView(){
       
        List<logInPageCursor>cursor = new ArrayList<logInPageCursor>();
         try {
             int m = maxid();
            for (int i=1; i<=m;i++)
            {
                String s1 = "select  givepost from post where organization_id=? order by rand() limit 1 ";
                String s2 = "select  givephoto from photo where organization_id=? order by rand() limit 1 ";
                String s3 = "select organization_name from admin where organization_id=?";
                PreparedStatement stmt1 = connection.prepareStatement(s1);
                PreparedStatement stmt2 = connection.prepareStatement(s2);
                PreparedStatement stmt3 = connection.prepareStatement(s3);
                
                stmt1.setInt(1,i);
                stmt2.setInt(1,i);
                stmt3.setInt(1,i);
                
                ResultSet rs1= stmt1.executeQuery();
                ResultSet rs2 = stmt2.executeQuery();
                ResultSet rs3 = stmt3.executeQuery();
                if (rs1.next() && rs2.next() && rs3.next())
                {
                    String post = rs1.getString("givepost");
                    Blob blob = rs2.getBlob("givephoto");
                    String name = rs3.getString("organization_name");
                    
                      byte[] b= new byte[(int)blob.length()];
                      b = blob.getBytes(1,(int)blob.length());
                     String s = new String(org.apache.commons.codec.binary.Base64.encodeBase64(b));
                    logInPageCursor log = new logInPageCursor(name,post,s);
                    cursor.add(log);
                    
                }
                
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
         return cursor;
     }
    
    public int user (String s)
    {
        try {
            String sqlString="select organization_id from admin where organization_name=?";
            PreparedStatement statement = connection.prepareStatement(sqlString);
            
            statement.setString(1,s);
            
            ResultSet rs = statement.executeQuery();
            
            if(rs.next())
            {
                Organization_ID=rs.getInt("organization_id");
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Organization_ID;
    }
    
    public String OrgNameRet ()
    {
        String s="";
        try {
            String sqlString = "select organization_name from admin where organization_id=?";
            PreparedStatement stmt = connection.prepareStatement(sqlString);
            stmt.setInt(1, Organization_ID);
            ResultSet rs = stmt.executeQuery();
            if (rs.next())
            {
                s=rs.getString("organization_name");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return s;
    }
    
    public int InsertReview (String rev,int rate)
    {
        int j=0;
        String s=OrgNameRet();
        try {
            String sqlString ="insert into review (review_text,review_rate,organization_name,organization_id) values(?,?,?,?)";
            PreparedStatement stmt = connection.prepareCall(sqlString);
            stmt.setString(1, rev);
             stmt.setInt(2,rate);
              stmt.setString(3,s);
              stmt.setInt(4,Organization_ID);
              
              int i = stmt.executeUpdate();
              
              if (i==1)
              {
                  j=i;
                  
              }
             
             
            
        } catch (Exception e) {
            e.printStackTrace();
        }
       return j;
    }
    
   public List<userInfo>ReviewSeen()
   {
       List<userInfo>reviews = new ArrayList<userInfo>();
       try {
           String sqlString = "select review_text,review_rate from review where organization_id=?";
           PreparedStatement stmt = connection.prepareCall(sqlString);
           stmt.setInt(1, Organization_ID);
           ResultSet rs = stmt.executeQuery();
           
            
            while(rs.next()){
               userInfo review = new userInfo(rs.getString("review_text"),rs.getString("review_rate"));
               reviews.add(review);
           }
       } catch (Exception e) {
           e.printStackTrace();
       }
       return reviews;
   }
}
    
   
    

