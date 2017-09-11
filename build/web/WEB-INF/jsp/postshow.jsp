<%@page import="com.sun.mail.handlers.image_gif"%>
<%@page import="java.util.ArrayList"%>
<%@page import="database.DataAccess"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>


<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
   <head>
      <title>Welcome Bro</title>
   </head>
  
   <body>
        <table>
     <c:forEach  items="${post}" var="item"  >
         <tr>
            <td>${item}</td>
         </tr>
         </c:forEach>
</table> 
     
      
        <table>
            
           
             <c:forEach items="${image}" var="img">
                   <c:url value="/PostShow/image" var="imdd"></c:url> 
               

           <tr>
               <%--<td>${items}</td> --%>
              
             <td>
       
               
              
               
              
              <%
                  /*
               // b=null;
                   
               
            
               Blob b = image.;
               OutputStream o = null;
               System.out.println("ami baal...........");
               //long i=b.length();
               //System.out.println(i);
           //    byte [] brr=new byte[(int)b.length()];              
                byte [] brr=new byte[(int)b.length()];
                System.out.println(b.length());
               // byte [] brr=new byte[102400];
                brr=b.getBytes(1,(int)b.length());
                response.setContentType("image/png");
                o = response.getOutputStream();*/
               %>
               <%--  <td>  <img src="<%o.write(brr); %>" width="100" height="100" --%> 
               
           <img src="/StreetChild/PostShow?img"/>
           <h1>${imdd}</h1>
               </td>
               
           </tr>
                
       </c:forEach>
            </table> 
                   


 
          
       
   </body>
   
</html>