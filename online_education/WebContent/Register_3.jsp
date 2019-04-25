<html>

<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        body {
            background-position: center;
  background-size: cover;
  background-image: url("https://images.unsplash.com/photo-1549082969-62ab24fa9d7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80");
  min-height: 100%;
        }
       
body {
@import url('https://fonts.googleapis.com/css?family=Raleway');
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
    width: 340px;
    height: 600px;
    border-radius: 0.35em;
    box-shadow: 0 3px 10px 0 rgba(0, 0, 0, 0.2);
    text-align: center;
    opacity:0.9;
}

#container-register {
    background-color: #1D1F20;
    position: relative;
    top: 20%;
    margin: auto;
    width: 340px;
    height: 480px;
    border-radius: 0.35em;
    box-shadow: 0 3px 10px 0 rgba(0, 0, 0, 0.2);
    text-align: center;
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
    
    margin: 0;
    background-color: #373b3d;
    border: 1px solid #373b3d;
    padding: 6px 0px;
    border-radius: 3px;
    color: white;
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
    color: white;
}

input[type=password]:focus {
    border: 1px solid #373b3d;
}

input[type=email] {
    color: #949494;
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
</head>

<body>

    <div id="container-login">
        <div id="title">
         <center><img src="8da771e8-98c2-482f-925d-8d1c244b0a49.png" alt="HTML5 Icon" style="width:300px;height:200px;"></center> 
            <i class="material-icons lock">lock</i> Login
        </div>

        <form action="Admin_login" method="get">
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">face</i>
                </div>
                <input id="Associate ID" placeholder="Associate ID" type="text" name="associate_id" autocomplete="off">
            </div>

            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">vpn_key</i>
                </div>
                <input id="password" placeholder="Password" type="password" name="password" required
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
								onchange="form.Password.pattern = RegExp.escape(this.value);" autocomplete="off">
            </div>

            <div class="remember-me">
                <input type="checkbox">
                <span style="color: #DDD">Remember Me</span>
            </div>

            <input type="submit" value="Submit" />
        </form>

        
        <div class="privacy">
            <a href="#">Privacy Policy</a>
        </div>

        <div class="register"><font color="white">
            Don't have an account yet?</font>
            <a href="Register_1.jsp"><button id="Registration zone">Register here</button></a>
        </div>
    </div>
</body>

</html>