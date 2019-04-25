<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"></head>
<title>Welcome Admin</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  height: 100%;
  line-height: 1.8;
}


/* Full height image header */
.bgimg-1 {
  background-position: center;
  background-size: cover;
  background-image: url("https://images.unsplash.com/photo-1545446987-94d35d4c85b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80");
  min-height: 100%;
}

.w3-bar .w3-button {
  padding: 16px;
}
.w3-container{
border-radius:50%;
}
</style>
<body>

	

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
   <img src="icon.JPG" alt="HTML5 Icon" style="width:190px;height:60px;"> 
    
    
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      
      <a href="Student.jsp" class="w3-bar-item w3-button"><i class="fa fa-graduation-cap"></i>Student Registration</a>
      <a href="Faculty.jsp" class="w3-bar-item w3-button"><i class="fa fa-user-circle-o"></i> Faculty Registration</a>
      <a href="Course1.jsp" class="w3-bar-item w3-button"><i class="fa fa-book"></i> Course</a>
      <a href="Fee2.jsp" class="w3-bar-item w3-button"><i class="fa fa-inr"></i>Fee Payment</a>
      <a href="Exam_Schedule.jsp" class="w3-bar-item w3-button"><i class="	fa fa-calendar"></i>Exam Schedule </a>
      <a href="Admin_Dashboard.jsp" class="w3-bar-item w3-button"><i class="	fa fa-user"></i>Admin Profile </a>
      <a href="Register_3.jsp" class="w3-bar-item w3-button"><i class="	fa fa-sign-out"></i>Log out </a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  >
  <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">Student Registration</a>
  <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">Faculty Registration</a>
  <a href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">Course</a>
  <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">Fee Payment</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">About</a>
</nav>

<!-- Header with full-height image -->
<header class="bgimg-1 w3-display-container " id="home">
  <div class="w3-display-left w3-text-green" style="padding:48px">
    <center><span class="w3-jumbo w3-hide-small">Start something that matters</span><br>
    <span class="w3-xxlarge w3-hide-large w3-hide-medium">Start something that matters</span><br>
    <span class="w3-xlarge">Stop wasting valuable time with theories that just isn't you.</span></center>
    
  </div> </center>
  
  
</header>
<div class="w3-container" style="padding:128px 16px" id="about">
  <h3 class="w3-center">ABOUT US</h3>
  
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">Smart education</p>
      <p>We follow what every top level institutions are following in recent days.Smart Education is having an out of the box procedure to organize class for each of the students of different ages. Learning English is not to acquire knowledge about grammar or listening dialog in the classroom.Everybody has to know the proper implication and use of the language. </p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Passion learning</p>
      <p>we believe in best learning practice.We will let open up with passion.Passion is hot. It is a force that sells movies and margarine and everything in between. It is a force the can move mountains, inspire art and make the weak strong. We need to bring passion back into learning, in teaching and all around. Passion motivates. It makes a way out of no way. It allows students to overcome hardships to achieve a goal that is meaningful to them.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Design</p>
      <p>One of the best design we follow in the field of learning.At the Lab, we use a human-centered design process in combination with tools from other industries to help schools, employers, government agencies, foundations, nonprofits, and innovators alike design, test, and implement new higher education models that improve opportunity for historically underserved learners.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">24*7 Support</p>
      <p>help from our associate 24*7 hours.And we would love to show you our Ridiculous Commitment to Learning.
      </p>
    </div>
  </div>
</div>

<div class="w3-container w3-light-grey" style="padding:128px 16px">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3>We are now 2019 centric eduzone in web.We provide solutions purpose-built for education by working with teachers and students worldwide to guide our product design. To ensure effective implementation, we provide professional development and education consulting services grounded in insights from EdTech research.</h3>
      <p></p>
      <p><a href="#" class="w3-button w3-black"><i class="fa fa-th"> </i> View Our stories </a></p>
    </div>
    <div class="w3-col m6">
      <img class="w3-image w3-round-large" src="https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Buildings" width="700" height="394">
    </div>
  </div>
</div>

<div class="w3-container w3-row w3-center w3-dark-grey w3-padding-64">
  <div class="w3-quarter">
    <span class="w3-xxlarge">300+</span>
    <br>Industry Partners
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">8000+</span>
    <br>Students Enrolled
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">5000</span>
    <br>Happy Users
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">50+</span>
    <br>Countries
  </div>
</div>
<div class="w3-container w3-light-grey" style="padding:128px 16px" id="contact">
  <h3 class="w3-center">CONTACT</h3>
  <p class="w3-center w3-large">Lets get in touch. Send us a message:</p>
  <div style="margin-top:48px">
    <p><i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i> Kolkata,India</p>
    <p><i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right"></i> Phone: +91 151515700</p>
    <p><i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i> Email:CognitiveEducation@gmail.com</p>
    <br>
    <form action="/action_page.php" target="_blank">
      <p><input class="w3-input w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Subject" required name="Subject"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Message" required name="Message"></p>
      <p>
        <button class="w3-button w3-black" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </p>
    </form>
    <!-- Image of location/map -->
    
  </div>
</div>
<div class="w3-container" style="padding:128px 16px" id="team">
  <h3 class="w3-center">THE TEAM</h3>
  <p class="w3-center w3-large">The ones who created this company</p>
  <div class="w3-row-padding w3-grayscale" style="margin-top:64px">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="IMG_20180526_221558_305.jpg" alt="ritz" style="width:100%" height="450" width="300">
        <div class="w3-container">
          <h3>Rituraj Chakraborty</h3>
          <p class="w3-opacity">Software Engineer</p>
          <p>A creative frontEnd developer and a data Analytics enthusiast.</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="manish...._111.jpg" alt="kumar" style="width:100%" height="450" width="300">
        <div class="w3-container">
          <h3>Manish Kumar</h3>
          <p class="w3-opacity">Software Engineer</p>
          <p>A core enthusiast in the field of Software Engineering and data enthusiast</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="raja.jpg" alt="satya" style="width:100%" height="450" width="300">
        <div class="w3-container">
          <h3>Rajajee Satyajeet Kumar</h3>
          <p class="w3-opacity">Backend Developer</p>
          <p>Machine learning and core software development fellow as well as Java freak.</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="sonal.jpg" alt="roy" style="width:100%" height="450" width="300">
        <div class="w3-container">
          <h3>Sonal Roy</h3>
          <p class="w3-opacity">Developer</p>
          <p>Software product ethics and technical handling expert, follows ethics in the field of SDLC.</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
  </div>
</div>


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
</html>