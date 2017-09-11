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
    background-image: url(/StreetChild/resources/bootstrap/images/bg3.jpg);
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
   .btn-navbar:hover, .btn-navbar:focus, .btn-navbar:active, .btn-navbar.active, .open>.dropdown-toggle.btn-navbar {
    color: #122b40;
    background-color: #444;
     /*set the color you want here*/
}
.styled-select {
   background: url(http://i62.tinypic.com/15xvbd5.png) no-repeat 96% 0;
   height: 29px;
   overflow: hidden;
   width: 240px;
}

.styled-select select {
   background: transparent;
   border: none;
   font-size: 14px;
   height: 29px;
   padding: 5px; /* If you add too much padding here, the options won't show in IE */
   width: 268px;
}

.styled-select.slate {
   background: url(http://i62.tinypic.com/2e3ybe1.jpg) no-repeat right center;
   height: 34px;
   width: 240px;
}

.styled-select.slate select {
   border: 1px solid #ccc;
   font-size: 16px;
   height: 34px;
   width: 268px;
}
 .dropbtn {
    background-color: brown;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    width: 160px;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
} 
</style>
</head>
<body >
    
 <div class="navbar navbar-default navbar-inverse">
                <div class="navbar-header"><a class="navbar-brand" href="#"><strong>Street Children Welfare</strong></a>
     
                </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right ">
        <li class="active"><a href="#"><p>Home</p></a></li>
        <li>
            <form  method = "POST" action="/StreetChild/orgCreate" >
                <button type="submit" class="btn btn-navbar" name="action4" style="opacity: .8;filter: alpha(opacity=50);"><p style="color: #000">Create Organization</p></button>
            </form> 
        </li>
        <li>
            <form  action="/StreetChild/orgCreate" method = "POST">
                <button type="submit" class="btn btn-navbar" name="action4" style="opacity: .8;filter: alpha(opacity=50);"><p style="color: #000">Donate</p></button>
            </form>
        </li>
        <li>
            <form  action="/StreetChild/" method = "POST">
                <button type="submit" class="btn btn-navbar" name="action4" style="opacity: .8;filter: alpha(opacity=50);"><p style="color: #000">About us</p></button>
            </form>
        </li>      </ul>
    </div>
 </div>

 
         
    <div class="container">
    <div class="row">
    <div class="col-lg-3 col-sm-3 col-md-3" style="position: relative;top: -20px;">
          <form  action="/StreetChild/checkUserInfo" method = "POST">
              <table>
               <tr><input type="text" placeholder="username" name = "username" /></tr>
              <tr><input type="password" placeholder="password" name="password"/></tr>
              <tr>
                  <td><button type = "submit" class="btn btn-primary btn-sm"  name = "action2" >Login</button></td>
                   <td><button type = "submit" class="btn btn-danger btn-sm" name = "action1" >sign up</button></td>
              </tr>
              </table>
          </form>
        
        
        <div>
        <div class="dropdown" style="" > 
            
          <button class="dropbtn glyphicon glyphicon-align-left glyphicon-collapse-down" >View Organization activity </button>
          
                 
   <div class="dropdown-content" >
           <c:forEach items="${OrgName}" var = "OrgName"> 
               
                      <%-- 
                  <button type="submit" name="OrganizationName" class="btn btn-primary btn-lg">${OrganizationName}</button>
                      --%>
     <form action="/StreetChild/userview" method="POST" >
                      
         <button class="btn btn-navbar" type="submit" name="mybutton" value="${OrgName}">${OrgName}</button>
              </form>  
 
             
              </c:forEach>
                       </div>
            
    </div>
</div>
   
  </div>
     
   
 
 <div class="col-lg-9 col-sm-9 col-md-9">
   
     <div id="myCarousel" class="carousel slide" data-ride="carousel" style="position: relative;top: -20px;">  
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
           
            <c:choose>
                <c:when test="${i%4==0}" >
                    <c:set var ="i" value="${i+1}"/>
                     <div class="item active">
                         <h2 class="text-center" style="position: relative;top: -20px; background-color: #122b40;color: #ccc; height:40px;"><c:out value="${items. getOrganizationName()}"/></h2>
                         <p style="color: #DAF3F8"> <c:out value="${items.getPost()}"/></p>  
       <img class="rounded-circle" style="width: 70%;height: 70%; border: 10px;padding-left: 40px; padding-bottom: 20px"  src="data:image/jpg;base64,${items.getBlob()}" />
                     </div>
                </c:when>
       
       
       <c:otherwise>
            <c:set var ="i" value="${i+1}"/>
            <div class="item">
       <h2 class="text-center" style="position: relative;top: -20px;background-color: #122b40;color: #ccc; height:40px;"><c:out value="${items. getOrganizationName()}"/></h2>
       <p style="color: #DAF3F8"> <c:out value="${items.getPost()}"/></p>  
       <img class="rounded-circle" style="width: 70%;height: 70%; border: 10px;padding-left: 40px; padding-bottom: 20px"  src="data:image/jpg;base64,${items.getBlob()}" />
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
      
      
    
<div class="container">
  <div class="row">
    <div class="col-md-12">  <h2 style="color: black; margin-bottom:44px;" class="text-center">Developers</h2></div>
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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
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
