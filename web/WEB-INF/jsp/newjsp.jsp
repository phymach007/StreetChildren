<%-- 
    Document   : newjsp
    Created on : May 1, 2017, 3:24:03 AM
    Author     : Raihan Sabique
--%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
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
<link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/expand/style.css">
<link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/expand/font-awesome.">

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
    background-color: #286090;
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
                
                <nav class="navbar  navbar-default navbar-fixed-top">
                    <div class="navbar-header"><a class="navbar-brand" href="#"><strong><c:out value="${orgname}" ></c:out></strong></a>
     
                </div>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right ">                        
                          
                        <li>
                <form method = "POST" action = "/StreetChild/login">
                    <button type = "submit" class="btn btn-navbar" name="start" style="opacity: .8;filter: alpha(opacity=50);" >Back To Home</button>
                </form>
                        </li>        
                    </ul>
                    </div>
                </nav>
            
          
           
      <div class="container" style="position:relative;top:50px">
        <div class="row">
           <div class="col-md-8" style="background-color: #F2EFE9 ; resize: horizontal;overflow: auto;">
             <c:forEach items="${Final1}" var="final" varStatus = "i">
                 <c:set var="commentget" value="${commentget}"/>
                  <c:set var="id" value="${postid[i.index]}"/>
<!--                 <p>this is the key : ${postid[i.index]}</p>-->
                 
                 
              
                 <div class="panel panel-default post" style="">
              <div class="panel-body">
                 <div class="row">
                   <div class="col-sm-2">
                     <a href="profile.html" class="post-avatar thumbnail"><img src="img/user.png" alt=""><div class="text-center">User</div></a>
                   
                   </div>
                     <div class="col-sm-8">
                         <div class="bubble" style="width:350px;">
                       <div class="pointer">
                         <p>${final.key}</p>
                       </div>
                       <div class="pointer-border"></div>
                     </div>
                       <div>
                       <c:forEach items="${final.value}" var = "pic">
                        <img style="width: 200px;height: 150px; border: 10px;padding-left: 40px; padding-bottom: 20px"  src="data:image/jpg;base64,${pic}" />
                      </c:forEach>
                           
                       </div>
                       <p class="post-actions"><a href="#">Like</a> - <a href="#">Share</a></p>
                       
                       
                       <c:forEach items="${commentget[id]}" var="com">        
                     <div class="bubble" style="width:350px;">
                       <div class="pointer">
                         <p>${com}</p>                       <%--// I have to work here........--%>
                       </div>
                       <div class="pointer-border"></div>
                     </div>
                       </c:forEach>
                       
                
                            
                      
                       
                       
                     <div class="comment-form">
                         <form class="form-inline" action="/StreetChild/userviewupdate" method="POST">     
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="enter comment" name="comment">
                          <input type="hidden" name="postid" value="${i.index}"> 
                        </div>
                        <button type="submit" name ="comment" class="btn btn-default">Comment</button>
                      </form>
                     </div>
                     <div class="clearfix"></div>

                     <div class="comments">
                       
                       <div class="clearfix"></div>
                     </div>
                     </div>
                 </div>
              </div>
             </div>   
             
          </c:forEach>
                   </div>
           
                
                
            
            <div class="col-md-4" style="">
               
                   <div class="affix">
                 <h5>Your suggestions,comments or query:</h5>
                 <%-- new codes --%>
                 <form  class="form-"  method="POST" action="/StreetChild/Review">
                  <textarea class="form-control" name="review" placeholder="Write here" rows="4" cols="38" style=" background-color: #0000; align-items: center"></textarea>
                  <h3>Rate Our Organization:</h3>
                  <input class="form-control" type="radio" name="rate" value="1">1<br>
                  <input type="radio" name="rate" value="2">2<br>
                  <input type="radio" name="rate" value="3">3<br>
                  <input type="radio" name="rate" value="4">4<br>
                  <input type="radio" name="rate" value="5">5<br>
                   
      <button type = "submit" class="btn btn-primary" name="reviewbutton" style="opacity: .8;filter: alpha(opacity=50);">Give Your Opinion</button>     
                 </form> 
              
            </div>
                 
                
            </div>
                 
                 <div class="affix">
                 
             <h5>About Organization:</h5>
                 
                 <p ${Info}</p>
                 
                 </div>
                
                 
        </div>
                    </div>
                    
    </body>
</html>
