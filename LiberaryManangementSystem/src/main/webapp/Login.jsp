<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Librarian Log in</title>
<style type="text/css">
body {
	background-image: url("res/Library_bg.jpg");
}

.container {
	text-align: center;
	color: #2a363b;
	height: 500pt;
	width: 400pt;
	margin: auto;
	padding: 30px;
	background-color: #99b898;
	font-family: monospace;
}

.logo a, img {
	height: 15pt;
	width: 15pt;
	position: relative;
	left: -25%;
}

.logo:hover {
	transform: scale(1.005);
}

form {
	background-color: #ff847c;
	border-radius: 10pt;
	padding-top: 10pt;
	padding-bottom: 10pt;
}

input {
	width: 35%;
	font-family: monospace;
	display: inline-block;
	background-color: #fecea8;
	border-radius: 3pt;
	margin: 2pt;;
}

input[type=submit] {
	margin: auto;
	width: 15%;
}

input[type=submit]:hover {
	transform: scale(1.2);
}

h2 {
	position: relative;
	text-decoration: underline;
}
</style>
</head>
<body>
	 <div class="container">
	<!--  form for registration -->
	
	<div class="logo">
		<a href="PreLogin.jsp"><img alt="" src="res/logoBack.png"></a>
	</div>
	<h2>Log in Form</h2><br><br>
	<form action="loginForm" method="post">
	 <label for="email01">Email</label>	<br>
	 <input type="email" name="email01" id="email01" placeholder="Enter your email account"/><br><br>
	 <label for="pass01">Password</label><br>
	 <input type="password"  id="pass01" name="pass01" placeholder="Enter a password"/><br><br>
	<input type="submit" value="Log in">
	</form>
</div>
</body>
</html>