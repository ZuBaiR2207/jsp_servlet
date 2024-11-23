<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Librarian Log in</title>
<style type="text/css">
body{

 background-image: url("res/Library_bg.jpg");}
	.container{
	 text-align:center;
	 color: #2a363b; 
	 height: 500pt;
	 width: 400pt;
	 margin:auto;
	 padding: 30px; 
	 background-color: #99b898; 
	 font-family: monospace;
}
	
	.logo a, img{
	height: 15pt;
	width: 15pt;
	position: relative;
	left: -25%;
	
	}
	.logo:hover{
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
	font-family	: monospace;
	display: flex;
	background-color: #fecea8;
	border-radius: 3pt;
	margin: auto;
	
}
	input[type=submit]{
	margin: auto; 
	width: 15%;
	
	}
	input[type=submit]:hover{
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
		<a href="AdminPanel.jsp"><img alt="" src="res/logoBack.png"></a>
	</div>
	
	<h2>Delete Librarian Account (admin:${admin_name})</h2>
	
	<form action="deleteForm" method="post">
	<input type="text" name="emaillib" id="emaillib" placeholder="Enter librarian email"><br>
	<input type="submit" value="Delete">
	</form>
	
</div>
</body>
</html>