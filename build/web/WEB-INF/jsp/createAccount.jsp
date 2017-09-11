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

        <title>create account</title>
        <style>
            body{
                background-image: url(/StreetChild/resources/bootstrap/images/singup.png);
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
        <a href="/StreetChild/login"><button  class="btn btn-primary btn-lg glyphicon glyphicon-arrow-left">Back</button>
        </a>
        <div class="row" style="background-color:black; height: 800px;width: 500px;opacity: 0.5;filter: alpha(opacity=50);position: relative;left: 350px">
            <div class="col-lg-10 col-sm-6">
            <a style="position:relative;left:150px;background-color: blue"><strong>Create your account</strong></a>
            <div style="position: relative;  top:30px; left: 50px">
               
                <form method = "POST" action = "/StreetChild/checkVolunteerInfo">
                    <h4 style="color: white">Name        :</h4><input type="text" name="Name" /> <br>
                    <h4 style="color:white">Email       :</h4><input type="email" name="Email" /><br>
                <h4 style="color:white">Password    :</h4><input type="password" name="Password" /><br>
                <h4 style="color:white">Confirm password:</h4><input type="password" name="confirmpassword" /><br>
                 <h4 style="color:white">Address     :</h4><input type="text" name="Address" /> <br>
                <h4 style="color:white">Contact No. :</h4><input type="text" name="ContactNo" /> <br>
                <h4 style="color:white">Occupation  :</h4><input type="text" name="Occupation" /> <br>
                <h4 style="color:white">Institution   :</h4><input type="text" name="Institution" /> <br>
                
                <h4 style="color:white"> Select Organisation :</h4><div style="position: relative;left: 200px;top: -40px;"> <select id="organization" name="organization" multiple="multiple">
                       <option  value="shishu bikash"> shishu bikash</option>
                       <option  value="child care">child care</option>
                       <option  value="child care">care for child</option>
                    </select></div>
                <h4 style="color:white">Upload your profile photo :</h4>
                <input type="file" name="pp" size="40"/>
             
            </div>
                        <%--<a href="/StreetChild/login"><div class="btn" style="position: relative;left: 150px;top: 50px;height: 20px;width: 70px">Create</div>
                            </a>--%>
                      
            
                                <div style="position: relative;top:40px; left: 50px;"><button type="submit" class="btn btn-primary btn-lg" name="action1">Submit</button></div>
                                </form>
            
            
        </div>
        </div>
        </div>
    </body>
</html>
