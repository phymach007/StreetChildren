<%-- 
    Document   : userview
    Created on : 10-Jul-2017, 20:48:21
    Author     : Lenovo
--%>

<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name = "viewport" content = "width = device-width, initial-scale = 1.0"/>
    

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>admin home page</title>
<link type="text/css" rel="stylesheet" href="/StreetChild/resources/bootstrap/css/normalize.css" />
<link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="/StreetChild/resources//bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/css/screen.css" />
   <script src="/StreetChild/resources/bootstrap/js/bootstrap.min.js"></script>
   
<style>
    html, body ,   #map-canvus{ height: 100%;
			margin: 0; padding: 0;
        
		}
    a{
      text-decoration:none;
      color: whitesmoke;
   }
   .btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open>.dropdown-toggle.btn-primary {
    color: #fff;
    background-color: #00b3db;
    border-color: #285e8e; /*set the color you want here*/
}
.btn-default:hover, .btn-default:focus, .btn-default:active, .btn-default.active, .open>.dropdown-toggle.btn-default {
    color: #fff;
    background-color: #00b3db;
    border-color: #285e8e; /*set the color you want here*/
}
   .btn-navbar:hover, .btn-navbar:focus, .btn-navbar:active, .btn-navbar.active, .open>.dropdown-toggle.btn-navbar {
    color: #111;
    background-color: #444;
     /*set the color you want here*/
}
.thumbnail {
    background-color: snow;
   
    border: none;
    border-radius: 0px;
    text-align:center;
}
.shadow-depth-4{
   -webkit-box-shadow: 0 16px 28px 0 rgba(0, 0, 0, 0.22), 0 25px 55px 0 rgba(0, 0, 0, 0.21);
  -moz-box-shadow: 0 16px 28px 0 rgba(0, 0, 0, 0.22), 0 25px 55px 0 rgba(0, 0, 0, 0.21);
  box-shadow: 0 16px 28px 0 rgba(0, 0, 0, 0.22), 0 25px 55px 0 rgba(0, 0, 0, 0.21);
  }
</style>
    </head>
    <body>
        <h2>Welcome to</h2>
        <h1>${a}</h1>
        <h1>${orgname}</h1>
         <div class="container-fluid" style="background-color: #fff; ">
        
         
             <%--   
            <c:forEach items="${Final1}" var="final">
         
         <div  style="background-color: #fff ; margin: 20px;border:10px; border-color: #3c3c3c;">
             
             <br><div class="thumbnail shadow-depth-4">
                 <h3>${final.key} </h3>
             </div></br>
                    <c:forEach items="${final.value}" var = "pic">
                        <img class="rounded-circle" style="width: 300px;height: 350px; border: 10px;padding-left: 40px; padding-bottom: 20px"  src="data:image/jpg;base64,${pic}" />
                    </c:forEach>

             
         </div>
           </c:forEach>  
             --%>
       </div>
    </body>
</html>
