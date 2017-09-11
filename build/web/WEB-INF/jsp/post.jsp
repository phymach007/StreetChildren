<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
   .btn-navbar:hover, .btn-navbar:focus, .btn-navbar:active, .btn-navbar.active, .open>.dropdown-toggle.btn-navbar {
    color: #111;
    background-color: #444;
     /*set the color you want here*/
}
.btn-block:hover, .btn-block:focus, .btn-block:active, .btn-block.active, .open>.dropdown-toggle.btn-block {
    color: #111;
    background-color: #3c3c3c;
    border-color: #ebebeb;
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
        </li>

                                         <li>
                <form method = "POST" action = "/StreetChild/createchildrenlist">
                    <button type = "submit" class="btn btn-navbar" name="action2" style="opacity: .8;filter: alpha(opacity=50);" >Add Children</button>
                </form>
                        </li>
                        <li class="active"><a href="#"><p>Create Event</p></a></li>
                        
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
    <%--<div class="col-lg-8 col-sm-6 text-center">
        
             <form method = "POST" action = "/StreetChild/PostShow" >
            
               <textarea name="post" placeholder="Write here" rows="20" cols=70%></textarea>
               <input type="file" style="position: relative;left: 150px;" name="filename" size="50"/>
                    
               <%--<input type = "submit" style="" name="action1" value="Post" />
                  --%> 
                  <%--<button type = "submit" style="width: 440px;" name="action1" class = "btn btn-danger btn-lg">Post</button>
                   
             </form>
        
        </div> --%>
                  
 <div class="container">
    <div class="row">
        <form method = "POST" action = "/StreetChild/PostShow" >
        <div class="col-xs-12 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">  
           
            <!-- image-preview-filename input [CUT FROM HERE]-->
            <div class="input-group image-preview">
                <textarea  type="text" rows="3" placeholder="Write here" class="form-control image-preview-filename" name="post"></textarea> <!-- don't give a name === doesn't send on POST/GET -->
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span> Clear
                    </button>
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
            <button type = "submit" name="action1" class = "btn btn-block" style="background-color: #285e8e"><strong>Post</strong></button>
                   
        </div>
        </form>
    </div>
</div>    
                  
                  
                  
   
    </div>
                
</body>
</html> 

            
              
<%--
              <%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
        
           
          
         

<form action="/StreetChild/PostShow" method = "POST">
    
    
            <p>
                Username:<input type="text" name="post"/>
              </p>
              
             <input type = "submit" name = "action1" value = "Login"/> 
          
            <h2 style="color: red;">Don't have an account???</strong></h2>
            
    
    </form>

</head>
</html>

--%>