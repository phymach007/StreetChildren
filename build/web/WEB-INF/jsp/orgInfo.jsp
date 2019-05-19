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
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/style.css">
		<!-- skin -->
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/skin/default.css">
      
    <link type="text/css" rel="stylesheet" href="/StreetChild/resources/bootstrap/css/normalize.css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="/StreetChild/resources//bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/css/screen.css" />
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/fronts/octicons.css" />
    <script src="/StreetChild/resources/bootstrap/js/bootstrap.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <link href="/StreetChild/resources/bootstrap/css/simple-sidebar.css" rel="stylesheet">
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
    
        
        
        <nav id="navbar-section" class="navbar navbar-default navbar-static-top navbar-sticky" role="navigation">
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
                    <li >
                        
                        <form method = "POST" action = "/StreetChild/admin">
                            <button type = "submit" class="btn btn-navbar btn-lg" name="admin" style="background-color:  #fff;"  >Newsfeed</button>
                </form>
                    </li>
                    <li class="active color-white">
                       <a >Organization Information</a>
                    </li>
                </ul>
                
                
               
                        <ul class="nav navbar-nav pull-right">
                            <li class>
                         
                        <a href="/StreetChild/start">Logout</a>
                    </li>
                </ul>         
            </div>
        </div>
    </nav>
    
    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#section-org">
                        Organization Description
                    </a>
                </li>
                <li class="">
                    <a href="#section-volunteerlist">Volunteer List</a>
                </li>
              
                <li>
                    <a href="#section-map">Volunteer location map</a>
                </li>
                
                <li>
                    <a href="#section-childList">Children List</a>
                </li>
                <li>
                    <a href="#section-addchildren">Add Children</a>
                </li>
                <li>
                    <a href="#section-about">About us</a>
                </li>
                
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            
                <i href="#menu-toggle" id="menu-toggle" class="fa fa-bars fa-5x"></i>
                
            
                <section class="section appear clearfix" id="section-org">
			<div class="container"> 
				<div class="row mar-bot40">
					<div class="col-md-6 col-md-offset-3">
						
						<div class="align-center">
							<i class="fa fa-star fa-5x mar-bot20"></i>
							<h2 class="slogan">Child Care</h2>
							<p>
							Lorem ipsum dolor sit amet, natum bonorum expetendis usu ut. 
							Eum impetus offendit disputationi eu, at vim aliquip lucilius praesent. 
							Alia laudem antiopam te ius, sed ad munere integre, ubique facete sapientem nam ut. 
				
							</p>	
						</div>
					</div>
				</div>
			</div>
		</section>
            
     <section id="section-volunteerlist" class="section appear clearfix" style="background-color: #eeeeee">  
        
         <div class="align-center">
							<i class="fa fa-table fa-3x mar-bot10"></i>
                                                        <h2 class="slogan"><u>Volunteer Database</u></h2>
         </div>
         
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
 </section>
            
            <section id="section-map">
                
            </section>
            
            
            
            
            
<section id="section-childList" class="section appear clearfix" style="">
            

        <div class="row-fluid">
            <div class="col-sm-6 col-lg-8 color-white" style="background-color: #000">
                <div class="align-center">
							<i class="fa fa-table fa-3x mar-bot10"></i>
                                                        <h2 class="slogan"><u>Children Database</u></h2>
         </div>
<table class="table " >
        <thead>        
            <tr class="align-centre ">
           
            
                <th> Name</th>
                <th> Age</th>
                <th>Foster Parent Name</th>
            
               </tr>  
        </thead>
               
        <tbody>    
              
                 <c:forEach items="${childlist}" var="item">
               
               <tr class="align-centre">
                 
                   <td><c:out value="${item.getName()}"/> </td>
                   <td><c:out value="${item.getAge()}"/> </td>
                   <td><c:out value="${item.getParentName()}"/> </td>
                  
                   
                        
                   </tr>
                </c:forEach>
        </tbody>
               
   </table>
            </div>
            <div class="col-sm-3 col-lg-4 align-center" style="background-color: " >
        <form method="POST"  action = "/StreetChild/ChildrenListWithParent">
      
   
              <h2 style="color: #66512c">Add Children With Foster Parent:</h2>
              <div>
               
                <h4 style="color: #000">Child Name       :</h4><input type="text" name="ChildName" /> <br>
                <h4 style="color:  #000">Child Age      :</h4><input type="text" name="Age" /> <br>
                <h4 style="color: #000">Parent Name   :</h4><input type="text" name="ParentName" /> <br>
                <h4 style="color: #000">Address    :</h4><input type="text" name="Address" /> <br>
                <h4 style="color: #000">Contact No.      :</h4><input type="text" name="ContactNO" /> <br>
                 <h4 style="color: #000">Occupation      :</h4><input type="text" name="Occupation" /> <br>
                 <h4 style="color: #000">Institution      :</h4><input type="text" name="Institution" /> <br>
                
                 
           
              </div>
        

              <br><div ><button type="submit" class="btn btn-navbar btn-lg" style="" name="action1"><strong style="color:">Submit</strong></button></div>
              
              </form>
            </div>
        </div>				
        
            </section>
            
            
            
            
            
            
            
                <section id="section-addchildren" class="section appear clearfix" style=" background-color: azure" >
                    <div class="align-center">
							
                                                        <h2 class="slogan"><u>Add Children to Database</u></h2>
         </div>
		
                <div class="cform" id="contact-form">
									<form method = "POST" action = "/StreetChild/childrenlist" role="form" class="contactForm">
							  <div class="form-group">
								<label for="name">Children Name</label>
								<input type="text" name="Name" class="form-control" id="Name" placeholder="Enter children name" data-rule="minlen:4" />
								<div class="validation"></div>
							  </div>
							  <div class="form-group">
								<label for="email">Age</label>
								<input type="text" class="form-control" name="Age" id="Age" placeholder="Enter the age"  />
								<div class="validation"></div>
							  </div>
                                                                            <button type="submit" name="action3" class="btn btn-theme pull-left">ADD CHILDREN</button>
							</form>
        </div>
		
		</section>
            
            <section id="section-about" class="section appear clearfix">
		
		</section>
        </div>
        <!-- /#page-content-wrapper -->

         <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
    </div>
   
</body>
</html>