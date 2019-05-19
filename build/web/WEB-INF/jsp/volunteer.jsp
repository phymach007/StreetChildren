<%-- 
    Document   : volunteer
    Created on : 25-Apr-2017, 22:42:40
    Author     : Lenovo
--%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
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
    
<style>
     
.carousel-inner > .item > img,  
.carousel-inner > .item > a > img {  
      width: 80%;  
      margin: auto;  
}  
 
body {
    
}

h1 {
    color: white;
    text-align: center;
}

p {
    font-family: serif;
    font-size: 20px;
  }
  a {
     text-decoration:none;
      color: white;
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
<div class="container" style="background-color: #0f0f0f;width: 100%;">
  <div class="navbar navbar-default navbar-btn navbar-inverse">
                <div class="navbar-header"><a class="navbar-brand" href="#"><strong>Shishu Bikas</strong></a>
     
                </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right ">
        <li class="active"><a href="#">Home Page</a></li>
        <li><%--<a href="StreetChild/" >
                <img src="/StreetChild/resources/bootstrap/images/logomsg.jpg" class="pull-left" width="30px" height="30px"/>
               
                <span class="glyphicon glyphicon-message">Message Box</span>
                
           </a> --%>
             <a href="#">
      <span class="glyphicon glyphicon-envelope"></span> Mailbox
    </a>
        </li>
        <li><a href="#">Account</a></li>
        <li><a href="/StreetChild/start">Logout</a></li>
      </ul>
    </div>
      <div class="container" style="align-content: center">
          <img src="/StreetChild/resources/bootstrap/images/c1.jpg" style="height: 70%;width: 100%"/>
          
          <h1>Welcome to ${Organization}</h1>
      </div>
  </div>
    <div class="container" style="height: 10px"></div>
    <div class="container">
        <div class="row">
          
          <div class="container-fluid" style="background-color: #222;padding: 50px; border: 30px;border-color: #761c19; ">
        
         
             
            <div class="container-fluid" style="background-color: #fff; ">
        
         
             
            <c:forEach items="${Final}" var="final">
         
         <div  style="background-color: #fff ; margin: 20px;border:10px; border-color: #3c3c3c;">
             
             <br><div class="thumbnail shadow-depth-4">
                 <h3>${final.key} </h3>
             </div></br>
                    <c:forEach items="${final.value}" var = "pic">
                        <img class="rounded-circle" style="width: 300px;height: 350px; border: 10px;padding-left: 40px; padding-bottom: 20px"  src="data:image/jpg;base64,${pic}" />
                    </c:forEach>

             
         </div>
           </c:forEach>  
       </div> 
        
               
          
           
            
     
        </div>
        
              
        </div>
    </div>
    
 </div>
             
              
       

   
       
    </body>
</html>
