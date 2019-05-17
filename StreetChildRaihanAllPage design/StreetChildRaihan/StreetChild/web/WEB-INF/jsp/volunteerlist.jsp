<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : createAccount
    Created on : Apr 24, 2017, 12:03:24 AM
    Author     : Raihan Sabique
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link type="text/css" rel="stylesheet" href="/StreetChild/resources/bootstrap/css/normalize.css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="/StreetChild/resources//bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/css/screen.css" />
    <script src="/StreetChild/resources/bootstrap/js/bootstrap.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <title>Children Form</title>
        <style>

.btn-default:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
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
            
        </style>
    </head>
    <body style=" background-color: #3c3c3c;">
    <div class="container">
        <div class="container" style="background-color: #111">
            <h1 class="text-center" style="color: #fff">শিশুবিকাশ</h1>
                </div>
        <%--<div id="header" class="container">--%>
        <div class="container" id="logo" style=" margin-bottom: 20px;  height: 360px; border-style: solid;border-width: medium; " >
         <div class="row" style="align-content: center">
          <img src="/StreetChild/resources/bootstrap/images/c1.jpg" style="height: 350px; width: 100%"/>
          <div class="container" style="position: relative;top:-20px">
              <label class="btn btn-default btn-file glyphicon glyphicon-open" style="background-color: #5e5e5e">
                    Upload cover <input type="file" style="display: none; background-color: #333">
                </label>
                </div>
          
            </div> 
        </div>
        
            <div class="container" style="">
                <div class="navbar navbar-default navbar-inverse">
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right ">

                        <li>
                              <form method = "POST" action = "/StreetChild/admin">

                                <button type = "submit" class="btn btn-navbar" name="admin" style="color: #111;  opacity: .8;filter: alpha(opacity=50);" >Home</button>
                                </form>
                        </li>
        
                        
                          
                        <li>
               <form method = "POST" action = "/StreetChild/createchildrenlist">
                    <button type = "submit" class="btn btn-navbar" name="action2" style="opacity: .8;filter: alpha(opacity=50);" >Add Children</button>
                </form>
                        </li>
                           
                        
                 
                            
                        <li>
                <form method = "POST" action = "/StreetChild/post">
                    <button type = "submit" class="btn btn-navbar" name="action1" style="opacity: .8;filter: alpha(opacity=50);" >Event Create</button>
                </form>
                        </li>
                        
                        
                        <li>
                   <form method = "POST" action = "/StreetChild/ChildrenList">
                <button type = "submit" class="btn btn-navbar" name="action3" style="opacity: .8;filter: alpha(opacity=50);">Children List</button>
                   </form>>
                   </li>
                   
                   <li class="active"><a href="#"><p>Volunteer List</p></a></li>
                   <li>
                            <form method = "POST" action = "/StreetChild/map">
                    <button type = "submit" class="btn btn-navbar" name="map" style="opacity: .8;filter: alpha(opacity=50);">View Map</button>
                    </form>
                        </li>
                        <li>
                            <a href="/StreetChild/start" style="color: #111"><button type = "submit" class="btn btn-navbar" style="position: relative;top: -15px;left:-15px; opacity: .8;filter: alpha(opacity=50);" >Logout</button>
                    </a>
                        </li>
                    </ul>
                </div>
                </div>
            </div>
        <div class="col-lg-12" style="background-color: #fff;position: relative;top: -20px;left: 17px;">
        
      
        <table class="table" >
            <thead>
            <tr>
           
            
            <th> Name</th>
            <th>Address</th>
            <th>Contact No </th> 
            <th>Occupation </th>
            <th>Institution </th>
            <th>Email </th>
               </tr>    
               
            </thead>
            <tbody>  
                 <c:forEach items="${volunteerlist}" var="item">
               
               <tr>
                   <td><c:out value="${item.getName()}"/> </td>
                   <td><c:out value="${item.getAddress()}"/> </td>
                   <td><c:out value="${item.getContactNo()}"/> </td>
                   <td><c:out value="${item.getOccupation()}"/> </td>
                   <td><c:out value="${item.getInstitution()}"/> </td>
                   <td><c:out value="${item.getEmail()}"/> </td>
                   
                        
                   </tr>
</c:forEach> 
        </tbody>
              
              
               
            
                
        </table>
       
        </div>
        
    </div> 
    </body>
</html>
