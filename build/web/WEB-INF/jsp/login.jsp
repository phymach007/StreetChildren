<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Street Child</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/css/megamenu.css" media="screen" />	
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/bootstrap-theme.css">
    
		<!-- skin -->
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/skin/default.css">
      
    <link type="text/css" rel="stylesheet" href="/StreetChild/resources/bootstrap/css/normalize.css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/css/screen.css" />
   
    <script src="/StreetChild/resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    
<style>
     
.carousel-inner > .item > img,  
.carousel-inner > .item > a > img {  
      width: 80%;  
      margin: auto;  
}  


   
   .btn-dark:hover, .btn-dark:focus, .btn-dark:active, .btn-dark.active, .open>.dropdown-toggle.btn-dark {
    color: #285e8e;
    background-color: #0f0f0f;
    border-color: #ddd
 /*set the color you want here*/
}


.btn-block:hover, .btn-block:focus, .btn-block:active, .btn-block.active, .open>.dropdown-toggle.btn-block {
    color: #fff;
    background-color: #122b40;
    border-color: #F2EFE9; /*set the color you want here*/
}


 
</style>
</head>
<body >

                
<nav class="navbar navbar-inverse navbar-fixed-top w3_megamenu" role="navigation">
    <div class="navbar-header">
        <button type="button" data-toggle="collapse" data-target="#defaultmenu" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="#" class="navbar-brand"><i class="fa fa-home"></i></a>
    </div><!-- end navbar-header -->
        
            <div id="defaultmenu" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#section_home">Bondhon</a></li>
                    <li><a  href="#section-createOrg">Create Organization</a></li>
                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Organization List <b class="caret"></b></a>
                        <ul class="dropdown-menu" role="menu">
                            
                <c:forEach items="${OrgName}" var = "OrgName"> 
                    <li>
                        <form action="/StreetChild/userview" method="POST" >
                      
                            <button class="btn btn-block"  type="submit" name="mybutton" value="${OrgName}">${OrgName}</button>
                </form>
                        
                        
                    </li>
                      <%-- 
                  <button type="submit" name="OrganizationName" class="btn btn-primary btn-lg">${OrganizationName}</button>
                      --%>
                
                </c:forEach>
                            

                        
                         <!-- end dropdown-submenu -->
                    </ul><!-- end dropdown-menu -->
		</li>
            </ul>
                <ul class="nav navbar-nav navbar-right">
                    
                     
                    <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Login<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="form-group" style="padding-left:10px">
                                <form class="form" role="form" action="/StreetChild/checkUserInfo" method = "POST" accept-charset="UTF-8" id="login-nav">
						<div>
                                                     
							<input type="text" class="form-control"  placeholder="username" name="username" />
                                                        <input type="password" class="form-control" placeholder="Password" name="password"  />
                                                        <a style="color: #BD3518" href="#">Forget the password ?</a>
						</div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" style="color: #5e5e5e"> keep me logged-in
		  				    </label>
						</div>
						<div>
                                                    <button type = "submit" class="btn btn-block"  name = "action2" >Login</button>
						</div>
                                </form>
                                       <form class="form" role="form" action="/StreetChild/createaccount" method = "POST" accept-charset="UTF-8" id="login-nav">
                                                <div>
						Want to be a volunteer? <button type = "submit" class="btn btn-danger btn-sm" name = "action1" >join us</button></td>
					</div>

                                                
						
                                            </form>
                            </li>
                        </ul>
                    </li>
                    
        	</ul>
                                        
            </div>
</nav>
                <section class="section appear clearfix" id="section_home">
 <div class="container-fluid" style="background-color: #F2EFE9">
    <div class="row mar-bot40">
 
 <div class="container" >
   
     <div id="myCarousel" class="carousel slide" data-ride="carousel">  
    <!-- Indicators -->  
    <ol class="carousel-indicators">  
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>  
      <li data-target="#myCarousel" data-slide-to="1"></li>  
      <li data-target="#myCarousel" data-slide-to="2"></li>  
    </ol>  
  
    <!-- Wrapper for slides -->  
    <div class="carousel-inner" role="listbox">  
        <%-- <div class="item active">  
          <img src="/StreetChild/resources/bootstrap/images/street.jpg" alt="jokes 1" >  
        <h3>Santa-Banta</h3>  
        <p>Read Santa-Banta jokes at javaTpoint.</p>  
</div>  --%>
       
        <c:set var = "i" scope = "session" value = "${0}"/>
        <c:forEach items="${cursor}" var="items">
         <%--<c:forEach items="${list}" var="items">--%>  
            <c:choose>
                <c:when test="${i%4==0}" >
                    <c:set var ="i" value="${i+1}"/>
                    <div class="item active" style="">
                        
                         <img class="rounded-circle" style="height: 350px; width: 550px; "  src="data:image/jpg;base64,${items.getBlob()}" />
                         <p class="text-center" style="color: #496054;position: relative;">${items.getPost()}</p>
                      <h2 class="text-center" style="color: ">${items.getOrganizationName()}</h2>                     
       
                     </div>
                </c:when>
       
       
       <c:otherwise>
            <c:set var ="i" value="${i+1}"/>
            <div class="item">
       <img class="rounded-circle" style="height: 350px; width: 550px; "  src="data:image/jpg;base64,${items.getBlob()}" />
                         <h2 class="text-center" style="color: #496054;position: relative;">${items.getPost()}</h2>
                         <p class="text-center" style="color: "> ${items.getOrganizationName()}</p> 
            </div>     
       </c:otherwise>
            </c:choose>
       
</c:forEach>
  <%--
      <div class="item">  
          <img src="/StreetChild/resources/bootstrap/images/c1.jpg" alt="jokes 2" height="100" >  
         <h3>Santa-Banta</h3>  
        <p>Read Santa-Banta jokes at javaTpoint.</p>  
      </div>  
      
      <div class="item">  
        <img src="/StreetChild/resources/bootstrap/images/ch2.jpg" alt="jokes 3" >  
         <h3>Santa-Banta</h3>  
        <p>Read Santa-Banta jokes at javaTpoint.</p>  
      </div>  --%>
    </div>  
  
    <!-- Left and right controls -->  
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">  
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>  
      <span class="sr-only">Previous</span>  
    </a>  
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">  
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>  
      <span class="sr-only">Next</span>  
    </a>  
</div><!-- corousel end -->  
 </div>
</div>
 </div>
</section>
  
  <section id="section-createOrg" class="section appear clearfix" style="background-color: #496054">
        <div class="text-center">
							<i class="fa fa-flask fa-5x mar-bot20"></i>
							<h2 class="slogan">Build Your Organization Website</h2>
							<p>
							 
							</p>	
	</div>
        
        
      <form class="form" action="/StreetChild/checkOrgInfo" method="POST">
    <div class="container" style="position:relative;">
        <div class="row-fluid form-group">
            <div class="col-sm-5 col-lg-5">
        
                <h2 class="text-center" style="color: #c4e3f3"><strong>Admin Information</strong></h2>
           
               
                <p style="color: white">Full Name  </p><input class="form-control" type="text" name="Name" /> <br>
                <p style="color: white">username  </p><input class="form-control" type="text" name="uName" /> <br>
                <p style="color:white">Email       :</p><input class="form-control" placeholder="eg.example@gmail.com" type="email" name="Email" /><br>
                <p style="color:white">Password    :</p><input class="form-control" placeholder="at least 8 characters" type="password" name="Password" /><br>
                <p style="color:white">Confirm password</p><input class="form-control" placeholder="re-type password" type="password" name="confirmpassword" /><br>
                <p style="color:white">Contact No.</p><input class="form-control" placeholder="eg. 01xxxxxx" type="text" name="ContactNo" /> <br>
                <p style="color:white">Occupation</p><input class="form-control" type="text" name="Occupation" /> <br>
                <p style="color:white">Institution</p><input class="form-control" type="text" name="Institution" /> <br>
                
                <p style="color:white">Upload your profile photo</p>
                <input class="form-control" type="file" name="pp" size="20"/>
             
            
                        <%--<a href="/StreetChild/login"><div class="btn" style="position: relative;left: 150px;top: 50px;height: 20px;width: 70px">Create</div>
                            </a>--%>
  
            </div> 
       <div class="col-sm-7 col-lg-7">
          
           <h2 class="text-center" style="color: #c4e3f3"><strong>Organizaion Information</strong></h2>
           
               
              <p style="color: white">Organization Name       :</p><input class="form-control" type="text" name="orgName" /> <br>
                <p style="color:white">About Organization</p><textarea class="form-control" name="info" placeholder="long description about organization" rows="14" ></textarea> <br>
                <p style="color:white">Location</p><input class="form-control" type="text" name="orglocation" /> <br>
                <p style="color:white">Organization Contact No</><input class="form-control" placeholder="eg. 01xxxxxx" type="text" name="orgcontact" /> <br>
                
                 <p style="color:white">Upload Organization cover photo :</p>
                <input class="form-control" type="file" name="pp" size="20"/>
                             
            
                        <%--<a href="/StreetChild/login"><div class="btn" style="position: relative;left: 150px;top: 50px;height: 20px;width: 70px">Create</div>
                            </a>--%>

            
            
       
          
         </div>
      </div>
          
                            
                        
           <div>
          
               
               <span>
                   <input  type="checkbox"><b style="color: white">I Agree with <a  style="color: red"href="#"><u>terms & conditions</u></a></b><br>

               </span>     
               <button style="position:relative;top:13px"  type="submit" class="btn btn-block btn-lg" style="background-color:" name="action1"><strong style="color:#4A89AA">Submit</strong></button>
           </div>
    </div>
           </form>
 
        
    </section>
      
      
  <section id="section-about" class="section appear clearfix">  
<div class="container">
  				<div class="row mar-bot40">
					<div class="col-md-offset-3 col-md-6">
						<div class="section-header">
							<h2 class=" text-center" data-animation="bounceInUp">Our Team</h2>
                                                        <p></p>
						</div>
					</div>
				</div>
    <div class="row">
<div class="col-md-6 text-center">
  <img src="/StreetChild/resources/bootstrap/images/raihan.jpg" class="img-circle" width="100" height="100">
  <p>Md. Raihan Sabique</p>
  </div>
  
  <div class="col-md-6 text-center">
      <img src="/StreetChild/resources/bootstrap/images/alvi.jpg" class="img-circle" width="100" height="100">
      <p>
          Alvi Md. Ishmam
      </p>
  </div>
  </div>
</div>
  </section>
  
  <a href="#header" class="scrollup"><i class="fa fa-chevron-up"></i></a>	

	<script src="/StreetChild/resources/bootstrap/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
	<script src="/StreetChild/resources/bootstrap/js/jquery.js"></script>
	<script src="/StreetChild/resources/bootstrap/js/jquery.easing.1.3.js"></script>
    <script src="/StreetChild/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="/StreetChild/resources/bootstrap/js/jquery.isotope.min.js"></script>
	<script src="/StreetChild/resources/bootstrap/js/jquery.nicescroll.min.js"></script>
	<script src="/StreetChild/resources/bootstrap/js/fancybox/jquery.fancybox.pack.js"></script>
	<script src="/StreetChild/resources/bootstrap/js/skrollr.min.js"></script>		
	<script src="/StreetChild/resources/bootstrap/js/jquery.scrollTo-1.4.3.1-min.js"></script>
	<script src="/StreetChild/resources/bootstrap/js/jquery.localscroll-1.2.7-min.js"></script>
	<script src="/StreetChild/resources/bootstrap/js/stellar.js"></script>
	<script src="/StreetChild/resources/bootstrap/js/jquery.appear.js"></script>
    <script src="/StreetChild/resources/bootstrap/js/main.js"></script>
    <script src="/StreetChild/resources/bootstrap/contactform/contactform.js"></script>
  
  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  
  
  <script>
      $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
    });
    $(document).ready(function(){
        $(".dropdown").hover(
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown("400");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideUp("400");
            $(this).toggleClass('open');       
        }
        );
    });
  </script>
  
  
</body>
</html>


<%--<div class = "media">
   <a class = "pull-left" href = "#">
      <img class = "media-object" src = "/StreetChild/resources/bootstrap/images/bg3.jpg" alt = "Media Object">
   </a>
</div>--%>


<%--
<style>
    img.round{
        
        border-radius: 50%;
        height: 450px;
        width: 500px;
    }
    
    
    
    </style>
    
   <style> 
    div.scroll {
   
    width: 1400px;
    height: 1200px;
    overflow: scroll;
}
</style>

<style>
   text.round {
          
        border-radius: 10%;
        height: 450px;
        width: 500px;
        
    }
    </style>

<p>overflow:scroll</p>


<div style="height:450px;width:500px;border:1px solid gray;position:relative;margin:240px;"> 
    <div style="height:450px;width:500px;background-color:green;border-radius:10px;">
    </div>
    <div style="position:absolute;top:10%;text-align:center;width:100%;">
      This is one of the greatest event of history.
    </div>
</div>
<img height="100" width="200" src=<c:url value="../images/bg1.jpg"/>/>
      
   
--%>
