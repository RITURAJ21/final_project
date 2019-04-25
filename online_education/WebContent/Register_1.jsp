<html>

<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        body {
            background-position: center;
  background-size: cover;
  background-image: url("https://images.unsplash.com/photo-1489486501123-5c1af10d0be6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80");
  min-height: 100%;
        }
        @import url('https://fonts.googleapis.com/css?family=Raleway');
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
    width: 400px;
    height: 800px;
    border-radius: 0.35em;
    box-shadow: 0 3px 10px 0 rgba(0, 0, 0, 0.2);
    text-align: center;
}

#container-register {
    background-color: #1D1F20;
    position: relative;
    top: 20%;
    margin: auto;
    width: 400px;
    height: 900px;
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
    color:white;
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
    color:white;
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
    color:white;
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
</head>

<body>

    <div id="container-register">
        <div id="title">
        <center><img src="8da771e8-98c2-482f-925d-8d1c244b0a49.png" alt="HTML5 Icon" style="width:250px;height:150px;"></center> 
            <i class="material-icons lock">lock</i> Register
        </div>

        <form action="Admin_reg" method="post">
            
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">face</i>
                </div>
                <input id="First Name" placeholder="First name" type="text" name="first_name" autocomplete="off">
            </div>

            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">face</i>
                </div>
                <input id="Last Name" placeholder="Last name" type="text" name="last_name"  autocomplete="off">
            </div>

            <div class="clearfix"></div>
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">email</i>
                </div>
                <input id="email" placeholder="Email" type="email" name="email" pattern="^[A-Za-z]\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" autocomplete="off">
            </div>

            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">vpn_key</i>
                </div>
                <input id="password" type="password" name="password" placeholder="eg. :- Example123" required
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
								onchange="form.Password.pattern = RegExp.escape(this.value);" autocomplete="off">
            </div>
            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">face</i>
                </div>
                <input id="contact" placeholder="contact" type="text" name="contact" maxlength="10" Pattern= "[0-9]{10}"  autocomplete="off">
            </div>
            
           <div class="input">
                <div class="input-addon">
                    <i class="material-icons">date_range</i>
                </div>
                <input id="Age" placeholder="Age" type="text" name="age" autocomplete="off">
            </div>
            <div class="clearfix"></div>
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">people</i>
                </div>
                 <input type="radio" name="gender" value="male" checked>Male
                 &nbsp;<input type="radio" name="gender" value="female">Female
             &nbsp;<input type="radio" name="gender" value="other">Other
                       
            </div>
            <div class="clearfix"></div>
             <div class="input">
                <div class="input-addon">
                    <i class="material-icons">account_circle</i>
                </div>
                <input id="associate id" placeholder="Associate ID" type="text" name="associate_id" autocomplete="off">
            </div>
            <div class="clearfix"></div>

            <div class="remember-me">
                <input type="checkbox">
                <span style="color: #DDD">I accept Terms of Service</span>
            </div>

            <input type="submit" value="Register" />
        </form>

        <div class="privacy">
            <a href="#">Privacy Policy</a>
        </div>

        <div class="register">
            Do you already have an account?
            <a href="Register_3.jsp"><font color="white">Log In here</font></a>
        </div>
    </div>
</body>

</html>