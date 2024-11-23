<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Librarian Log in</title>
<style type="text/css">
body {
	background-image: url("res/Library_bg.jpg");
}

.container {
	text-align: center;
	color: #2a363b;
	height: 500pt;
	width: 56%;
	margin: auto;
	padding: 30px;
	background-color: #99b898;
	font-family: monospace;
}

.logo, img {
	height: 15pt;
	width: 15pt;
	position: relative;
	float: left;
}

button {
	background: none;
	border: none;
}

.logo:hover {
	transform: scale(1.2);
}

ul {
	margin-left: -15pt;
	position: relative;
	height:200pt;
	width:100%;
	list-style: none;
	display: inline-flex;
	background-color: #fecea8;
	margin:auto;
	border-radius: 4pt;
}
.list{
	display: inline-block;
	
}
.list:hover{
	transform:scale(1.2);
}
ul  li {
	margin-left: -15pt;
	align-content: stretch;
	display:;
	height: 70px;
	background: #ff847c;
	border-radius: 4pt;
	border-color: black;
	padding: 16pt;
	border-width:1pt;
	border-style: solid;
	font-size: 10pt;
}
.function{
	margin: auto;
	margin-top: 20pt;
}
.list-item{
	width:80pt;
	float: left;
	margin-top: 30pt;
	
}
.list-item:hover{
	transform:scale(1.1);
	
}
.list-item a:hover{
text-decoration: none;
color: black;
font-size: 11pt;
margin-top: -5pt;
}


a, button {
	text-decoration: none;
	color: #2a363b;
	font-family: monospace;
	margin-top: -10pt;
	font-weight: bold;
	font-family: monospace;
}
a{
	padding: 20pt;
	
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
		<form action="logout" method="post">
	<button><img alt="" src="res/icon_logout.jpg"></button>
	</form>
	</div>
	<h2>Welcome : ${lib_name}</h2><br><br>
	
	<div class="functions">
		<ul>
		<div class="list-item">
		<li><button aria-pressed="true"><a href="AddBooks.jsp" aria-pressed="true" >Add Book</a></button></li>
		</div>
		<div class="list-item">
		<li><button aria-pressed="true"><a href="ViewBooks.jsp" >View Books</a></button></li>
		</div>
		<div class="list-item">
		<li><button aria-pressed="true"><a href="DeleteUpdateBooks.jsp" >Edit Books</a></button></li>
		</div>
		<div class="list-item">
		<li><button aria-pressed="true"><a href="IssueBooks.jsp">Issue Books</a></button></li>
		</div>
		<div class="list-item">
		<li><button aria-pressed="true"><a href="ViewIssuedBooks.jsp">View Issued Books</a></button></li>
		</div>
		<div class="list-item">
		<li><button aria-pressed="true"><a href="ViewIssuedBooks.jsp">Return Books</a></button></li>
		</div>
		</ul>

	</div>
	
</div>
</body>
</html>