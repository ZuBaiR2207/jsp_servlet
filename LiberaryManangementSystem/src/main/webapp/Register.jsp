<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Librarian Register Page</title>
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

form {
	background-color: #ff847c;
	border-radius: 10pt;
	padding-top: 10pt;
	padding-bottom: 10pt;
}

input, select, option {
	background-color: #fecea8;
	border-radius: 3pt;
}

input[type=submit] {
	font-family: monospace;
}

input[type=submit]:hover {
	transform: scale(1.2);
}

h2 {
	position: relative;
	text-decoration: underline;
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
</style>
</head>
<body>
 <div class="container"><!--  style="color: white; height: 600px; width: 300px; position: relative; margin: auto; padding: 30px; background-color: green; font-family: monospace;"--> 
	<!--  form for registration -->
	<div class="logo">
		<a href="AdminPanel.jsp"><img alt="" src="res/logoBack.png"></a>
	</div>
	<h2>Registration Form (admin:${admin_name})</h2><br><br>
	<form action="registerForm" method="post">
	Name: 	<input type="text" name="name01" placeholder="Enter your name"/><br><br>
	Email:	<input type="email" name="email01" placeholder="Enter your email account"/><br><br>
	Password: <input type="password" name="pass01" placeholder="Enter a password"/><br><br>
	Contact: <input type="number" name="cont01" placeholder="Enter your contact number"><br><br>
	Gender: <input type="radio" name="gen01" value="Male"/>Male<input type="radio" name="gen01" value="Female"/>Female<br><br>
	City: 	<select name="city01">
		<option>Select city</option>
		<option>Subang Jaya</option>
		<option>Shah Alom</option>
		<option>KLCC</option>
		<option>Bungsar</option>
		<option>Setia Jaya</option>
	</select><br><br>

	<input type="submit" value="Register">
	</form>
</div>
</body>
</html>