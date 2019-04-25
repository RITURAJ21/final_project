<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Faculty Registration</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>
h3 {
	font-size: 36px;
}

button, input[type=text], input[type=email], input[type=number], select
	{
	width: 100%;
	padding: 12px 20px;
	margin: 8px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	
}
footer {
	position: fixed;
	left: 0;
	bottom: 0;
	text-align: center;
	width: 100%;
}

input[type=submit] {
	width: 15%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	background-color: #373E4A;
	color: white;
}

input[type=submit]:hover 
{
	background-color: #739ee2;
}



.w3-bar .w3-button 
{
	padding: 16px;
}

div.col-lg-6 
{
	width: 50%;
	border-radius: 15px;
	background-color: #f2f2f2;
	padding: 50px;
	opacity: 0.8;
	
}

/* First image (Logo. Full height) */
body 
{
	min-height: 100%;
	background-color: #2d2423;
	background-image:
		url(https://images.unsplash.com/photo-1547142632-bca340742184?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80);
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	height: 100%;
	line-height: 1.8;
}

.w3-win8-lime 
{
	color: #f9f6ef;
	background-color: #436a6d;
	opacity: 0.7;
	font-size: 20px;
}

/* Second image (Portfolio) */

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1600px) 
{
	div.col-lg-6, body 
	{
		background-attachment: scroll;
		min-height: 400px;
	}
}
</style>
</head>
<body>

	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
			<img src="icon.JPG" alt="HTML5 Icon"style="width: 190px; height: 60px;">
			<div class="w3-right w3-hide-small">
	  
	  <a href="front1.jsp" class="w3-bar-item w3-button"><i class="fa fa-home"></i>Home</a>
	  <a href="Student.jsp" class="w3-bar-item w3-button"><i class="fa fa-graduation-cap"></i>Student Registration</a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-user-circle-o"></i> Faculty Registration</a>
      <a href="Course1.jsp" class="w3-bar-item w3-button"><i class="fa fa-book"></i> Course</a>
      <a href="Fee2.jsp" class="w3-bar-item w3-button"><i class="fa fa-inr"></i>Fee Payment</a>
      <a href="Exam_Schedule.jsp" class="w3-bar-item w3-button"><i class="	fa fa-calendar"></i>Exam Schedule </a>
      <a href="Admin_Dashboard.jsp" class="w3-bar-item w3-button"><i class="	fa fa-user"></i>Admin Profile </a>
			</div>
			<a href="javascript:void(0)"
				class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium"
				onclick="w3_open()"> <i class="fa fa-bars"></i>
			</a>
		</div>
	</div>


	<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large"
		style="display:none" id="mySidebar"> 
		<a href="javascript:void(0)" onclick="w3_close()"
		class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a> 
		<a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">Student Registration</a>
		<a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">Faculty Registration</a>
		<a href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">Course</a>
	    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">Fee Payment</a>
		
	</nav>
	<center>
		<header class="bgimg-1 w3-display-container " id="home"></header>
	</center> 
	<div class="w3-display-left w3-text-white" style="padding: 48px"></div>
	<div class="w3-panel w3-win8-lime">
	<br>
		<center>
			<h1>Faculty Registration</h1>
		</center>
	</div>
	​
	<center>
		<div Class="col-lg-3"></div>
		<div class="col-lg-6">
			<form action="FacultyServlet" method="post"
				onSubmit="return formval();">
				<center>
					<table style="width: 100%">
						<tr>
							<td>Enter the Teacher Name:</td>
							<td><input type="text" name="teacher_name"
								placeholder="Enter the Teacher name" maxlength="25"  
								pattern="^[a-zA-Z ]+$" required /></td>
						</tr>
						<tr>
							<td>Enter the Highest Qualification:</td>
							<td><select name="qln">
									<option value="BTECH">BTECH</option>
									<option value="MTECH">MTECH</option>
									<option value="BCA">BCA</option>
									<option value="MCA">MCA</option>
									<option value="MSC">MSC</option>
									<option value="PHD">PHD</option>
							</select></td>
						</tr>
						<tr>
							<td>Enter Email:</td>
							<td><input type="email" name="email"
								placeholder="Enter Email" pattern="^[A-Za-z]\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" required /></td>
						</tr>

						<tr>
							<td>Enter Contact number:</td>
							<td><input type="text" name="contact_no"
								placeholder="Enter Contact number" maxlength="10"
								Pattern= "[0-9]{10}" required /></td>
						</tr>
						<tr>
							<td>Enter Adderss:</td>
							<td><input type="text" name="address"
								placeholder="Enter Adderss" required /></td>
						</tr>
						<tr>
							<td>Enter Experience in years:</td>
							<td><input type="text" name="experience"
								placeholder="Enter Experience" id="exp" required /></td>
						</tr>

					</table>

					<center>
						<input type="submit" value="submit" />
					</center>
			</form>
		</div>
		<div Class="col-lg-3"></div>
	</center>
	<br>
	<br>
	<footer class="w3-center w3-black w3-padding-50"> <%-- <div class="w3-xlarge w3-section">
		<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
			class="fa fa-instagram w3-hover-opacity"></i> <i
			class="fa fa-snapchat w3-hover-opacity"></i> <i
			class="fa fa-pinterest-p w3-hover-opacity"></i> <i
			class="fa fa-twitter w3-hover-opacity"></i> <i
			class="fa fa-linkedin w3-hover-opacity"></i>
	</div> --%>
	<p>
		Powered by <a href="http://localhost:7070/MAIN_PROJECT/"
			title="Cognitive Education" target="_blank"
			class="w3-hover-text-green">Cognitive Education</a>
	</p>
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
		function formval() {
			var x = document.getElementById("exp").value;
			
			if (x < 3) {
				alert("Faculty rating <3 and not eligible for registration");
				return false;
			}
			return true;
		}
	</script>


</body>
</html>
​
