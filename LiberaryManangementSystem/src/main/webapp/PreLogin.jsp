<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="styleSheet" href="">
<title>Select Admin or Librarian</title>

<!--  Internal CSS -->
<style type="text/css">
body {
	background-image: url("res/Library_bg.jpg");
}

.container {
	color: #2a363b;
	height: 500pt;
	width: 400pt;
	margin: auto;
	padding: 30px;
	background-color: #99b898;
	font-family: monospace;
}

button {
	height: 50pt;
	width: 200pt;
	margin-left: 100pt;
	border-radius: 10pt;
	background-color: #ff847c;
	text-align: center;
	text-decoration: none;
	color: 2a363b;
	font-size: 15pt;
	font-family: monospace;
	>
}

button:hover {
	transition: transform 0.5sec ease;
	transform: scale(1.2);
}

a {
	text-decoration: none;
	text-align: center;
	color: #2a363b;
}

a:hover {
	color: black;
	font-size: 10pt;
}
</style>
</head>
<body>
	<div class="container">
	<h3 style="text-align: center;">Log in as : </h3>
	<a href="AdminLogin.jsp"><button>Admin</button></a><br><br>
	<a href="Login.jsp"><button>Librarian</button></a>
	<a href="AdminLogin.jsp"><p> Click here to create a librarian account (admin access only) </p></a>
	</div>
	
</body>
</html>