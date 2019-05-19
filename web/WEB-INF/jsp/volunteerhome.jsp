<%-- 
    Document   : volunteer1
    Created on : Oct 4, 2017, 1:04:10 PM
    Author     : Raihan Sabique
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
            <li class="active"><a>Home</a></li>
            
            <li><a href="##">Members</a></li>
            <li><a href="/StreetChild/profile">Profile</a></li>
            <li><a href="/StreetChild/login">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
        
    <header class="masthead">
      <div class="overlay">
        <div class="container">
          <h1 class="display-1 text-bold" style="color: #EEE">Welcome to ${Organization}</h1>
          <h4 class="display-4 text-white">Organization slogan</h4>
        </div>
      </div>
    </header>
        
        
<section>
    <div class="container">
        <div class="row">
         <c:forEach items="${Final}" var="final">   
           <div class="panel panel-default post" >
              <div class="panel-body">
                 <div class="row">
                   <div class="col-sm-2">
                     <a href="profile.html" class="post-avatar thumbnail"><img src="img/user.png" alt=""><div class="text-center">Admin</div></a>
                   
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
                       <!--<p class="post-actions"><a href="#">Like</a> - <a href="#">Share</a></p>-->
                     <div class="comment-form">
                       <form class="form-inline">
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="enter comment">
                        </div>
                        <button type="submit" class="btn btn-default">Comment</button>
                      </form>
                     </div>
                     <div class="clearfix"></div>

                     <div class="comments">
                       
                       <div class="clearfix"></div>
                     </div>
                   </div>
                 </div>
              </div>
            </div>
         </c:forEach>  
     
            
        </div>
    </div>
</section>
        
     
     
     
        
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
        
    </body>
</html>
