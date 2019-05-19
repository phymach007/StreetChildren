<%-- 
    Document   : userreview
    Created on : 11-Jul-2017, 02:03:06
    Author     : Lenovo
--%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rating Confirmation</title>
    </head>
    <body>
        <h1>Your review has been recorded.</h1>
         <form  class="form-"  method="POST" action="/StreetChild/userview">
       <button type = "submit" class="btn btn-primary" name="goback" style="opacity: .8;filter: alpha(opacity=50);">Go Back</button>     
        
         </form>
    </body>
</html>
