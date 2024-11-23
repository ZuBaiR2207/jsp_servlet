<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Librarian Log in</title>
<style type="text/css">
	body{
	background-image: url("res/Library_bg.jpg");
	}
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
	.logo , img{
	height: 15pt;
	width: 15pt;
	position: relative;
	float: left;
	
	}
	button{
	background: none;
	border: none;
	}
	.logo:hover{
	transform: scale(1.2);
	}
	h2 {
    position: relative;
    text-decoration: underline;
}
	ul {
	list-style: none;
	display: inline-flex;
	background-color: #fecea8;
	margin: auto;	
	padding-right:30pt;
	border-radius: 4pt;
}
	ul li {
	float: center;
  background: #ff847c;
  margin: 10pt;
  border-radius: 4pt;
}
	ul li:hover{
	transform: scale(1.2);
	}
	a, button{
	text-decoration: none;
	color: #2a363b;
	font-family: monospace;
}
</style>
</head>
<body>
	 <div class="container">
	<!--  form for registration -->
	
	<div class="logo">
	<form action="logout" method="post">
	<button><img alt="" src="res/icon_logout.jpg"></button>
	</form>
	</div>
	<h2>Welcome to Admin Panel : ${admin_name}</h2><br><br>
	
	<!-- this if for the funtionalities of admin -->
	<div class="functions">
		<ul>
		<li><button><a href="Register.jsp">Add Librarian</a></button></li>
		<li><button><a href="EditLibrarian.jsp">Edit Librarian</a></button></li>
		<li><button><a href="ViewLibrarian.jsp">View Librarian</button></li>
		<li><button><a href="DeleteLibrarian.jsp">Delete Librarian</a></button></li>
		</ul>
	</div>
	
</div>
</body>
</html>