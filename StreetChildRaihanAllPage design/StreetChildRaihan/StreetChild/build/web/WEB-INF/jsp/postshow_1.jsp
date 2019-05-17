<%@page import="java.util.ArrayList"%>
<%@page import="database.DataAccess"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<%!Blob b; %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
   <head>
      <title>Welcome Bro</title>
   </head>
  
   <body>
        <table>
     <c:forEach items="${post}" var="item">
         <tr>
            <td>${item}</td>
         </tr>
         </c:forEach>
</table> 
     
        <table>
              
             <c:forEach items="${image}" var="items">
           <tr>
               b=items.get("${image}");  
               <%OutputStream o = null;
               byte [] brr=new byte[(int)b.length()];
               brr=b.getBytes(1,(int)b.length());
               response.setContentType("image/png");
               o = response.getOutputStream();%>
               <td>  <img src="<%o.write(brr); %>${items}" width="100" height="100" 
               
               
               </td>
               
           </tr>
      
       </c:forEach>
         
            </table> 
 
          
       
   </body>
   
</html>