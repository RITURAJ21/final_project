<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="p1.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>​
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"></head>
<title>logged In!!!Welcome User</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  height: 100%;
  line-height: 1.8;
}
.bgimg-1 {
  background-position: center;
  background-size: cover;
  background-image: url("https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80");
  min-height: 100%;
}
.w3-bar .w3-button {
  padding: 16px;
}
body {
    margin: 0;
    padding: 0;
    font-family: 'Raleway', sans-serif;
    color: #F2F2F2;
}


#container-login {
    background-color: #1D1F20;
    position: relative;
    top: 20%;
    margin: auto;
    width: 500px;
    height: 445px;
    border-radius: 0.35em;
    box-shadow: 0 3px 10px 0 rgba(0, 0, 0, 0.2);
    text-align: center;
}

#container-register {
    background-color: #1D1F20;
    position: relative;
    top: 20%;
    margin: auto;
    width: 500px;
    height: 800px;
    border-radius: 0.35em;
    box-shadow: 0 3px 10px 0 rgba(0, 0, 0, 0.2);
    text-align: center;
    opacity:0.8;
}

#title {
    position: relative;
    background-color: #1A1C1D;
    width: 100%;
    padding: 20px 0px;
    border-radius: 0.35em;
    font-size: 22px;
    border-bottom: 1px solid rgba(255, 255, 255, 0.05);
}

.lock {
position: relative;
top: 2px;
}

.input {
    margin: auto;
    width: 240px;
    border-radius: 4px;
    background-color: #373b3d;
    padding: 8px 0px;
    margin-top: 15px;
    /* text-color:white; */
}

.input-addon {
    float: left;
    background-color: #373b3d;
    border: 1px solid #373b3d;
    padding: 4px 8px;
    border-right: 1px solid rgba(255, 255, 255, 0.05);
}

input[type=checkbox] {
    cursor: pointer;
}

input[type=text] {
    /* color: #949494; */
  
    margin: 0;
    background-color: #373b3d;
    border: 1px solid #373b3d;
    padding: 6px 0px;
    border-radius: 3px;
}

input[type=text]:focus {
    border: 1px solid #373b3d;
}

input[type=password] {
    
    margin: 0;
    background-color: #373b3d;
    border: 1px solid #373b3d;
    padding: 6px 0px;
    border-radius: 3px;
}

input[type=password]:focus {
    border: 1px solid #373b3d;
}

input[type=email] {
     
    margin: 0;
    background-color: #373b3d;
    border: 1px solid #373b3d;
    padding: 6px 0px;
    border-radius: 3px;
}

input[type=email]:focus {
    border: 1px solid #373b3d;
}

.forgot-password {
    position: relative;
    bottom: 0%;
}

.forgot-password a:link {
    color: #C1C3C6;
    text-decoration: none;
}

.forgot-password a:visited {
    color: #C1C3C6;
    text-decoration: none;
}

.forgot-password a:hover {
    color: #FFF;
    transition: color 1s;
}

.privacy {
    margin-top: 5px;
    position: relative;
    font-size: 12px;
    bottom: 0%;
}

.privacy a:link {
    color: #949494;
    text-decoration: none;
}

.privacy a:visited {
    color: #949494;
    text-decoration: none;
}

.privacy a:hover {
    color: #C1C3C6;
    transition: color 1s;
}

*:focus {
    outline: none;
}

.remember-me {
    margin: 10px 0;
}

input[type=submit] {
    padding: 6px 25px;
    background: #373E4A;
    color: #C1C3C6;
    font-weight: bold;
    border: 0 none;
    cursor: pointer;
    border-radius: 3px;
}

.register {
    margin: auto;
    padding: 16px 0;
    text-align: center;
    margin-top: 40px;
    width: 85%;
    border-top: 1px solid #C1C3C6;
}

.clearfix {
    clear: both;
}

#register-link {
    margin-top: 10px;
    padding: 6px 25px;
    background: #373E4A;
    color: #C1C3C6;
    font-weight: bold;
    border: 0 none;
    cursor: pointer;
    border-radius: 3px;
}
</style>
<body>
<h1>Logged User</h1>
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
   <img src="8da771e8-98c2-482f-925d-8d1c244b0a49.png" alt="HTML5 Icon" style="width:200px;height:150px;"> 
    <div class="w3-right w3-hide-small">
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-graduation-cap"></i>Student Registration</a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-user-circle-o"></i> Faculty Registration</a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-book"></i> COURSE</a>
      <a href="Fee2.jsp" class="w3-bar-item w3-button"><i class="fa fa-inr"></i>Fee Payment</a>
      <a href="" class="w3-bar-item w3-button"><i class=" fa fa-calendar"></i>Exam Schedule </a>
      <a href="AdminProfile.jsp" class="w3-bar-item w3-button"><i class=" fa fa-user"></i>Admin Profile</a>
      <a href="Register_3.jsp" class="w3-bar-item w3-button"><i class=" fa fa-sign-out"></i>Log out </a>
    </div>
    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  >
  <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">Student Registration</a>
  <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">Faculty Registration</a>
  <a href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">COURSE</a>
  <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">Fee Payment</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
</nav>
<center></center><header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-left w3-text-white" style="padding:48px">
  
      
<center>
<h1>Admin Information</h1>
</center>
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/test" user="root" password="root" />
<sql:query dataSource="${snapshot}" var="result">
select * from admin_info where associate_id=<%=Admin_login.associate_id%>
      </sql:query>
<table border="2" width="100%">
<tr>
<td><b>First Name</b></td>
<td><b>Last Name</b></td>
<td><b>Email</b></td>
<td><b>Age</b></td>
<td><b>Gender</b></td>
<td><b>Associate ID</b></td>
</tr>


                      
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.first_name}" /></td>
<td><c:out value="${row.last_name}" /></td>
<td><c:out value="${row.email}" /></td>
<td><c:out value="${row.age}" /></td>
<td><c:out value="${row.gender}" /></td>
<td><c:out value="${row.associate_id}" /></td>
</tr>
</c:forEach>
                                
</table>



</div>
<div class="col-md-3"></div>
</div>
<div class="login h3">
<center><h3>To return Home<a href="front1.jsp">Click here!!</a></h3></center>
</center>
</div>
</form>
  </div>
        </header>
        
<footer class="w3-center w3-black w3-padding-64">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="http://localhost:7070/MAIN_PROJECT/" title="Cognitive Education" target="_blank" class="w3-hover-text-green">Cognitive Education</a></p>
</footer>


 
<script>
// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}


// Toggle between showing and hiding the sidebar when clicking the menu icon
var mySidebar = document.getElementById("mySidebar");

function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
  } else {
    mySidebar.style.display = 'block';
  }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
}
</script>
 
</body>
</html>​​
