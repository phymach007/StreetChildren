<%-- 
    Document   : profile
    Created on : 20-Oct-2017, 07:41:44
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
    <link href="/StreetChild/resources//bootstrap/css/bootstrap.css" rel="stylesheet"/>
    
    <link rel="stylesheet" type="text/css" href="/StreetChild/resources/bootstrap/css/screen.css" />
    
    <link href="/StreetChild/resources/bootstrap/css/one-page-wonder.css" rel="stylesheet">
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/expand/style.css">
    <link rel="stylesheet" href="/StreetChild/resources/bootstrap/css/expand/font-awesome.css">
    
    <script src="/StreetChild/resources/bootstrap/js/bootstrap.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
    <title>volunteer Page</title>
    <style>
        


        
        
        header.masthead {
    background: url('/StreetChild/resources/bootstrap/images/c1.jpg') no-repeat center center scroll;
    
    -webkit-background-size: cover;
    -moz-background-size: cover;
    background-size: cover;
    -o-background-size: cover;
}

header.masthead > .overlay {
    padding: 5rem 0;
    text-align: center;
    background: rgba(0, 0, 0, 0.6);
}

@media (min-width: 992px) {
    header.masthead > .overlay {
        padding: 10rem 0;
    }
}

.circleborder {
width: 200px;
height: 200px;
border-radius: 150px;
-webkit-border-radius: 150px;
-moz-border-radius: 150px;
background: url(URL) no-repeat;
box-shadow: 0 0 8px rgba(0, 0, 0, .8);
-webkit-box-shadow: 0 0 8px rgba(0, 0, 0, .8);
-moz-box-shadow: 0 0 8px rgba(0, 0, 0, .8);
}

        
    </style>
  </head>
    <body>
       
        
        
        <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
          <a class="navbar-brand" href="#">${Organization}</a>
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div id="navbar" class="collapse navbar-collapse navbar-right">
          <ul class="nav navbar-nav">
              <li><a href="/StreetChild/volunteerhome">Home</a></li>
            <!--<button type = "submit" class="btn btn-navbar btn-lg" name="start" style="background-color:  #fff; position: relative;top: -50px;"  >Logout</button>-->
            <li><a href="StreetChild/members">Members</a></li>
            <li class="active"><a >Profile</a></li>
            <li><a href="/StreetChild/login">Logout</a></li>
            <!--<button type = "submit" class="btn btn-navbar btn-lg" name="start" style="background-color:  #fff;"  >Logout</button>-->
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
        
        
    <div class="container" style="background-color: #d0e9c6">
        <c:forEach items="${Profile}" var="item">
            <div class="text-center" style="padding-top: 60px">
           <img src="data:image/jpg;base64,${item.getImage()}" class="circleborder">
                <h1 class="display-1 text-bold" style="color: #000"><c:out value="${item.getName()}"/></h1>
            </div>
            <div class="row" style="background-color: #b2dba1">
                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-heading text-center" style="background-color: #777">About You</div>
                        <div class="panel-body"> 
                            A long description about me.
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <ul class="list-group">
                <li class="list-group-item text-muted text-center" contenteditable="false">Your Information</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong class="">Address</strong></span> <c:out value="${item.getAddress()}"/></li>
                <li class="list-group-item text-right"><span class="pull-left"><strong class="">Institution</strong></span> <c:out value="${item.getInstitution()}"/></li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong class="">Work As</strong></span><c:out value="${item.getOccupation()}"/></li>
              <li class="list-group-item text-right"><span class="pull-left"><strong class="">Contact No. </strong></span><c:out value="${item.getContactNo()}"/></li>
              <li class="list-group-item text-right"><span class="pull-left"><strong class="">Email Address. </strong></span><c:out value="${item.getEmail()}"/></li>
                    </ul>
                </div>
                
            </div>
        </c:forEach>   
    </div>
   
          <%--<table class="table" >
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
                 <c:forEach items="${Profile}" var="item">
               
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
              
              
               
            
                
        </table>--%>
       
    </body>    
</html>
