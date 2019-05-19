<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : createAccount
    Created on : Apr 24, 2017, 12:03:24 AM
    Author     : Raihan Sabique
--%>
<!DOCTYPE html>
<html>
      
   <table class="table" >
        <thead>        
            <tr>
           
            
                <th> Name  </th>
                <th> Age  </th>
                <th>Foster Parent Name  </th>
            
               </tr>  
        </thead>
               
        <tbody>    
              
                 <c:forEach items="${OrgName}" var="OrgName">
               
               <tr>
                 <h2> dusufusy</h2>
                   <td><c:out value="${OrgName}"/> </td>
                  
                  
                   
                        
                   </tr>
                </c:forEach>
        </tbody>
               
   </table>
               
            
    </body>
</html>
