<%-- 
    Document   : createOrg
    Created on : May 18, 2017, 1:24:38 AM
    Author     : Raihan Sabique
--%>

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
    <%--background-image: url(/StreetChild/resources/bootstrap/images/ac.jpg);--%>
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
.btn-block:hover, .btn-block:focus, .btn-block:active, .btn-block.active, .open>.dropdown-toggle.btn-block {
    color: #285e8e;
    background-color: #0f0f0f;
    border-color: #ddd
 /*set the color you want here*/
}
  
</style>
</head>
<body>
   
 <div class="navbar navbar-default navbar-inverse">
                <div class="navbar-header"><a class="navbar-brand" href="#"><strong>Street Children Welfare</strong></a>
     
                </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right ">
          <li>
          <form  action="/StreetChild/login" method = "POST">       
                  <button class="btn btn-navbar" type="submit" name="start" style="opacity: .8;filter: alpha(opacity=50);"><p style="color: #000">Home</p></button>
                  
          </form>
          </li>
        <li>
            <li class="active"><a href="#"><p>Create Organization</p></a></li>
        <li>
        <li>
            <form  action="/StreetChild/orgCreate" method = "POST">
                <button type="submit" class="btn btn-navbar" name="action4" style="opacity: .8;filter: alpha(opacity=50);"><p style="color: #000">Donate</p></button>
            </form>
        </li>
        <li>
            <form  action="/StreetChild/orgCreate" method = "POST">
                <button type="submit" class="btn btn-navbar" name="action4" style="opacity: .8;filter: alpha(opacity=50);"><p style="color: #000">About us</p></button>
            </form>
        </li> 
      </ul>
    </div>
    
 </div>
   
    <form action="/StreetChild/checkOrgInfo" method="POST">
    <div class="container" style="position:relative;top: 80px;">
        <div class="row-fluid">
            <div class="col-sm-4 col-lg-5">
        <div class="container" style="background-color:black;height: 800px; width: 100%;opacity: 0.8;filter: alpha(opacity=50);">
            <h2 style="color: #31b0d5"><u>Admin Information:</u></h2>
            <div style="position: relative;  top:30px; left: 50px">
               
                <h4 style="color: white">Name        :</h4><input type="text" name="Name" /> <br>
                <h4 style="color:white">Email       :</h4><input type="email" name="Email" /><br>
                <h4 style="color:white">Password    :</h4><input type="password" name="Password" /><br>
                <h4 style="color:white">Confirm password:</h4><input type="password" name="confirmpassword" /><br>
                <h4 style="color:white">Contact No. :</h4><input type="text" name="ContactNo" /> <br>
                <h4 style="color:white">Occupation  :</h4><input type="text" name="Occupation" /> <br>
                <h4 style="color:white">Institution   :</h4><input type="text" name="Institution" /> <br>
                
                <h4 style="color:white">Upload your profile photo :</h4>
                <!--<input type="file" name="pp" size="20"/>--> 
                <input class="form-control"  name="file" type="file" accept="image/png, image/jpeg,image/gif" onchange="readURL(this);" />
<input type="hidden" name="pp" value="${file}" />
<img id="blah" src="data:image/jpg;base64,#" alt="your image5" />
<button type = "submit" name="action1" onclick="sortByDateeeee()" class = "btn btn-block" style="background-color:  #333"><strong style="color: #dbdbdb">Post</strong></button>
 
                
             
            </div>
                        <%--<a href="/StreetChild/login"><div class="btn" style="position: relative;left: 150px;top: 50px;height: 20px;width: 70px">Create</div>
                            </a>--%>
   
           
            
            
       
          </div>
            </div> 
       <div class="col-sm-6 col-lg-4">
          <div class="container" style="background-color:black;height: 800px; width: 180%;opacity: 0.8;filter: alpha(opacity=50);">
              <h2 style="color: #31b0d5"><u>Organizaion Information:</u></h2>
            <div style="position: relative;  top:30px; left: 50px">
               
                <h4 style="color: white">Organization Name       :</h4><input type="text" name="orgName" /> <br>
                <h4 style="color:white">About Organization :</h4><textarea name="info" placeholder="Write here" rows="20" cols="67"></textarea> <br>
                <h4 style="color:white">Location:   :</h4><input type="text" name="orglocation" /> <br>
                <h4 style="color:white">Organization Contact No   :</h4><input type="text" name="orgcontact" /> <br>
                
                 <h4 style="color:white">Upload Organization cover photo :</h4>
                <!--<input type="file" name="pp" size="20"/>-->
                  <input class="form-control"  name="file" type="file" accept="image/png, image/jpeg,image/gif" onchange="readURL(this);" />

                <input type="hidden" name="pp" value="${file}" />
<img id="blah" src="data:image/jpg;base64,#" alt="your image" />
             
            </div>
                        <%--<a href="/StreetChild/login"><div class="btn" style="position: relative;left: 150px;top: 50px;height: 20px;width: 70px">Create</div>
                            </a>--%>

            
            
       
          </div>
         </div>
      </div>
           <div><button type="submit" class="btn btn-block" onclick="sortByDateeeee()" style="background-color: #122b40" name="action1"><strong style="color: #ebebeb">Submit</strong></button></div>
    </div>
           </form>
                     
</body>
</html>
