<%-- 
    Document   : admin
    Created on : Apr 25, 2017, 6:09:03 PM
    Author     : Raihan Sabique
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

                        <li class="active"><a href="#"><p>Home</p></a></li>
                        
                          
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
                        
                        
                        <li>
                <form method = "POST" action = "/StreetChild/VolunteerList">
                <button type = "submit" class="btn btn-navbar" name="action4" style="opacity: .8;filter: alpha(opacity=50);">Volunteer List</button>
                </form>
                        </li>
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
            
                 
                                   
        <div class="row-fluid" style="position:relative;top:-20px;left:18px;">
            <div class="col-lg-3" >
            <div class="container-fluid" style=" background-color: #fff">
            
            <h1 class="text-center">Notify Volunteer</h1>
            
   
                <form method = "POST" action = "/StreetChild/pass">
                    <textarea name="mailsend" placeholder="Write here" rows="4" cols="35" style=" background-color: #0000; align-items: center"></textarea>
                <button type = "submit" class="btn btn-primary" name="mail" style="opacity: .8;filter: alpha(opacity=50);">Send</button>
                </form>
        </div>
                <div class="thumbnail shadow-depth-4" style="background-color: #dbdbdb">
                    <h3><strong>User Reviews</strong></h3>
                   <c:forEach items="${reviews1}" var="rev">
                       <div class="thumbnail shadow-depth-4" style="border:10px; border-color: #3c3c3c;" >
                       <p style="color: #0000">Comment:<c:out value="${rev.getReview()}"/></p><br>
                       <p style="color: #c9302c">Rating:<c:out value="${rev.getRate()}"/> </p>
                       </div>
                    </c:forEach>
                </div>
            </div>             
		
	
	<%--<div  style="backgroung-color:balck;height:1000px;width: 100%;position: relative;top: 100px; " >
            <h2 class="title"><a href="#">Welcome to Shishu Bikash </a></h2>
		<div class="image-style"><img src="bg1.jpg" width="970" height="320" alt="" /></div>
</div>--%>
        <div class="col-lg-9" style=" background-color: #888;">
            <div class="container-fluid">
            
            <h1 class="text-center">Welcome to ${Organization}</h1>
            
        </div>
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
</body>
</html>
