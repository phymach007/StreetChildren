<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
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
    <link href="/StreetChild/resources//bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/css/screen.css" />
    <script src="/StreetChild/resources/bootstrap/js/bootstrap.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

        <title>create account</title>
        <style>
            body{
                background-image: url(/StreetChild/resources/bootstrap/images/singup.png);
            }
            
            
             .btn-navbar:hover, .btn-navbar:focus, .btn-navbar:active, .btn-navbar.active, .open>.dropdown-toggle.btn-navbar {
    color: #111;
    background-color: #286090;
     /*set the color you want here*/
}

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
            
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10">
        <form method = "POST" action = "/StreetChild/login">
                    <button type = "submit" class="btn btn-navbar" name="start" style="opacity: .8;filter: alpha(opacity=50);" >Back To Home</button>
                </form>
                    <div class="align-center">
             <div class="section-header">
                 <h2 style="color: #EEE" class="section-heading animated" data-animation="bounceInUp"><u>Create you account as Volunteer</u></h2>
                                                        <p></p>
						</div>
           
               
                <form method = "POST" action = "/StreetChild/checkVolunteerInfo" enctype="multipart/form-data">
                    <h4 style="color: white">Name        :</h4><input type="text" name="Name" /> <br>
                    <h4 style="color:white">Email       :</h4><input type="email" name="Email" /><br>
                <h4 style="color:white">Password    :</h4><input type="password" name="Password" /><br>
                <h4 style="color:white">Confirm password:</h4><input type="password" name="confirmpassword" /><br>
                 <h4 style="color:white">Address     :</h4><input type="text" name="Address" /> <br>
                <h4 style="color:white">Contact No. :</h4><input type="text" name="ContactNo" /> <br>
                <h4 style="color:white">Occupation  :</h4><input type="text" name="Occupation" /> <br>
                <h4 style="color:white">Institution   :</h4><input type="text" name="Institution" /> <br>
                
                <h4 style="color:white"> Select Organisation :</h4><div style="position: relative;left: 200px;top: -40px;"> <select id="organization" name="organization" multiple="multiple">
                        <c:forEach items="${OrgName}" var="OrgName"> 
                         <option  value="${OrgName}"> ${OrgName} </option>
                          
                        </c:forEach>
                        <%--    <option  value="shishu bikash"> shishu bikash</option>
                       <option  value="child care">child care</option>
                       <option  value="child care">care for child</option>
                        --%>
                    </select></div>
                
                
                <h4 style="color:white">Upload your profile photo :</h4>
                
                <span id="fileselector">
        <label class="btn btn-default" for="upload-file-selector">
            <!--<input  name="pp" id="upload-file-selector" type="file">-->
            <input class="form-control"  name="file" type="file" accept="image/png, image/jpeg,image/gif" onchange="readURL(this);" />
<input type="hidden" name="pp" value="${file}" />
<img id="blah" src="data:image/jpg;base64,#" alt="your image" />
<!--<button type = "submit" name="action1" onclick="sortByDateeeee()" class = "btn btn-block" style="background-color:  #333"><strong style="color: #dbdbdb">Post</strong></button>-->
 
            <i class="fa_icon icon-upload-alt margin-correction"></i>upload file
        </label>
    </span>
             
            
                        <%--<a href="/StreetChild/login"><div class="btn" style="position: relative;left: 150px;top: 50px;height: 20px;width: 70px">Create</div>
                            </a>--%>
                      
            
                        <br><button type="submit" class="btn btn-primary btn-lg" name="action1"  onclick="sortByDateeeee()">Submit</button>
                                </form>
                    </div>
            
        </div>
        </div>
        </div>
                        
                        <script>
                            function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      $('#blah')
        .attr('src', e.target.result)
        .width(150)
        .height(200);
    };
    reader.readAsDataURL(input.files[0]);
  }
}
                    </script>
                    
                   <script>
function load() {
    var x = document.getElementById("myImg").src;
    document.getElementById("demo").innerHTML = x;
}
</script>

<script type="text/javascript">
        function sortByDateeeee() {
            var formData = new FormData();
            for (var i=0; i<files.length; i++){
            formData.append('file', $('input[type=file]')[i].files[i]);}
            console.log("form data " + formData);
            $.ajax({
                url : '/checkVolunteerInfo',
                data : formData,
                processData : false,
                contentType : false,
                type : 'POST',
                success : function(data) {
                    alert(data);
                },
                error : function(err) {
                    alert(err);
                }
            });
        }
    </script>

       
              
    </body>
</html>
