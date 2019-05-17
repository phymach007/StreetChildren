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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>admin</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/css/isotope.css" media="screen" />	
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/style.css">
		<!-- skin -->
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/skin/default.css">
      
    <link type="text/css" rel="stylesheet" href="/StreetChild/resources/bootstrap/css/normalize.css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/expand/style.css">
    <link href="/StreetChild/resources//bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/css/screen.css" />
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/fronts/octicons.css" />
    <script src="/StreetChild/resources/bootstrap/js/bootstrap.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
   
   <link rel="stylesheet" type="text/css" media="all" href="/StreetChild/resources/bootstrap/css/style-projects.css">
   
           <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
        <link href="http://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">
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
.btn-block:hover, .btn-block:focus, .btn-block:active, .btn-block.active, .open>.dropdown-toggle.btn-block {
    color: #fff;
    background-color: #00F;
    border-color: #286090; /*set the color you want here*/
}
   .btn-navbar:hover, .btn-navbar:focus, .btn-navbar:active, .btn-navbar.active, .open>.dropdown-toggle.btn-navbar {
    color: #111;
    background-color: #999;
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
<body >
    
        
        
        <nav id="navbar-section" class="navbar navbar-default navbar-fixed-top navbar-sticky" role="navigation">
        <div class="container">
        
            <div class="navbar-header">
                
                
                
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                    
            </div>
        
            <div id="navbar-spy" class="collapse navbar-collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav ">
                    <li class="active color-white">
                        <a >Newsfeed</a>
                    </li>
                    <li>
                        <form method = "POST" action = "/StreetChild/OrganizationInfo">
                            <button type = "submit" class="btn btn-navbar btn-lg" name="action2" style="background-color:  #fff;"  >Organization Information</button>
                </form>
                </ul>
                
                <div class="align-center">
							
                    <h2 class="slogan">Welcome to <strong>${Organization}</strong></h2>
								
						</div>
               
                        <ul class="nav navbar-nav pull-right">
                            <li class>
                         
                                <a href="/StreetChild/start" style="position: relative;top: -50px;">Logout</a>
                    </li>
                </ul>         
            </div>
        </div>
    </nav>
        <section >
        <div class="row container-kamn">  
        <img src="/StreetChild/resources/bootstrap/images/c1.jpg" width="100%" class="blog-post" alt="Feature-img" align="right" width="100%"> 
    
        
        </div>
        <div class="align-left" style="position: relative;top:-20px">
              <label class="btn btn-default btn-file glyphicon glyphicon-open" style="background-color: #5e5e5e">
                    Upload cover <input type="file" style="display: none; background-color: #333">
                </label>
                </div>
        <div id="banners"></div>
        
        
            <div class= well-lg">
                    <form method = "POST" action = "/StreetChild/PostShow" >
          
           
            <!-- image-preview-filename input [CUT FROM HERE]-->
            <div class="input-group image-preview">
                <textarea  type="text" rows="3" placeholder="Write here" class="form-control image-preview-filename" name="post"></textarea> <!-- don't give a name === doesn't send on POST/GET -->
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    
                    <!-- image-preview-input -->
                    <div class="btn btn-default image-preview-input">
                        <span class="glyphicon glyphicon-folder-open"></span>
                        <span class="image-preview-input-title">Browse</span>
                        <input type="file" accept="image/png, image/jpeg, image/gif" name="filename1"/> <!-- rename it -->
                        <input type="file" accept="image/png, image/jpeg, image/gif" name="filename2"/>
                        <input type="file" accept="image/png, image/jpeg, image/gif" name="filename3"/>
                        <input type="file" accept="image/png, image/jpeg, image/gif" name="filename4"/>
                        <input type="file" accept="image/png, image/jpeg, image/gif" name="filename5"/>
                        
                    </div>
                </span>
            </div><!-- /input-group image-preview [TO HERE]--> 
            <button type = "submit" name="action1" class = "btn btn-block" style="background-color:  #333"><strong style="color: #dbdbdb">Post</strong></button>
                   
        
        </form>
                </div>
                
          <div class="row">
           <div class="col-md-8" style="background-color: #F2EFE9 ; resize: horizontal;overflow: auto;">
           <c:forEach items="${Final}" var="final"> 
               
           <div class="panel panel-default post" >
              <div class="panel-body">
                 <div class="row">
                   <div class="col-sm-2">
                     <!--<a href=" "class="post-avatar thumbnail"><img src="img/user.png" alt=""><div class="text-center">Admin</div></a>-->
                   
                   </div>
                   <div class="col-sm-8" style="resize: horizontal;overflow: auto;">
                     <div class="bubble">
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
                       
                     <div class="comment-form">
                        <form class="form-inline" action="/StreetChild/userviewupdate" method="POST">
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="enter comment" name="comment">
                          <input type="hidden" name="fullpost" value="${final.key}">
                          <%--post er id kivabe pabo bujhchi na---%>
                          
                        </div>
                        <button type="submit" action ="comment" class="btn btn-default">Comment</button>
                      </form>
                     </div>
                     <div class="clearfix"></div>

                     <div class="comments">
                         <%--<div class="col-sm-8" style="resize: horizontal;overflow: auto;">
                     <div class="bubble">
                       <div class="pointer">
                         <p>${final.key}</p>
                       </div>
                       <div class="pointer-border"></div>
                     </div>--%>
                       
                       <div class="clearfix"></div>
                     </div>
                   </div>
                 </div>
              </div>
            </div>
         </c:forEach>          </div>
                
            
            <div class="col-md-3">
                <div class="well affix">
                <h1 class="text-center">Notify Volunteer</h1>
            
   
                <form method = "POST" action = "/StreetChild/pass">
                    <textarea name="mailsend" placeholder="Write here" rows="4" style=" background-color: #0000; align-items: center"></textarea>
                <button type = "submit" class="btn btn-block" name="mail" style="opacity: .8;filter: alpha(opacity=50);">Send</button>
                </form>
                </div>
        
                <div class="thumbnail shadow-depth-4 well" style="background-color: #dbdbdb">
                    <h3><strong>User Reviews</strong></h3>
                   <c:forEach items="${reviews1}" var="rev">
                       <div class="thumbnail shadow-depth-4" style="background-color: #fff" >
                       <p style="color: #0000">Comment:<c:out value="${rev.getReview()}"/></p><br>
                       <p style="color: #c9302c">Rating:<c:out value="${rev.getRate()}"/> </p>
                       </div>
                    </c:forEach>
                </div>
              
                
                
            </div>
        </div>
   
        
        
        
        </section>      
        
        
        
        <%--<div class="container" style="background-color: #111">
            <h1 class="text-center" style="color: #fff">শিশুবিকাশ</h1>
                </div>
        <%--<div id="header" class="container">
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
            </div>--%>
            
                 
                                   
        <%--<div class="row-fluid" style="position:relative;top:-20px;left:18px;">
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
</div>
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
         
        </div>--%>

             
</body>
</html>
