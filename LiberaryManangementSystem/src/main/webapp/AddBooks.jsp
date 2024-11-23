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
<title>Book Registration form</title>
<style type="text/css">
body{

 background-image: url("res/Library_bg.jpg");
 }
	.container{
	 text-align:center;
	 color: #2a363b; 
	 height: 500pt;
	 width: 50%;
	 margin:auto;
	 padding: 30px; 
	 background-color: #99b898; 
	 font-family: monospace;
}
	form {
	background-color: #ff847c;
	border-radius: 10pt;
	padding-top: 10pt;
	padding-bottom: 10pt;
	width: 80%;
	margin: auto;
}
	.form-group input {
	background-color: #fecea8;
	border-radius: 3pt;
	border: none;
	width: 60%;
	text-align: center;
}	
 	input[type=submit]{
	font-family: monospace;
	background-color: #fecea8;
	border-radius: 3pt;
	border: none;
	color: #2a363b; 
}
	input[type=submit]:hover{
		transform: scale(1.2);
		
	}

h6 {
    position: relative;
    text-decoration: underline;
    font-weight: bold;
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
</style>
</head>
<body>
 <div class="container"><!--  style="color: white; height: 600px; width: 300px; position: relative; margin: auto; padding: 30px; background-color: green; font-family: monospace;"--> 
	<!--  form for registration -->
	<div class="logo">
		<a href="LibProfile.jsp"><img alt="" src="res/logoBack.png"></a>
	</div>
	<h6> New Book Registration Form (Librarian:${lib_name})</h6><br><br>
	<form action="addBooks" method="post">
	<div class="form-group">
	<label for="bookId">Book ID</label><br>	<input type="number" name="bookId" placeholder="Enter book ID"/>
	</div>
	<div class="form-group">
	<label for="titleName">Titile Name</label><br>	<input type="text" name="titleName" placeholder="Enter book name"/>
	</div>
	<div class="form-group">
	<label>Author Name</label><br>	<input type="text" name="authorName" placeholder="Enter author name"/>
	</div>
	<div class="form-group">
	<label>Publisher</label><br> <input type="text" name="publisherName" placeholder="Enter publisher name"/>
	</div>
	<div class="form-group">
	<label>Publication</label> <br><input type="text" name="publication" placeholder="Enter publication">
	</div>
	<div class="form-group">
	<label>Genre </label><br><input type="text" name="genre" placeholder="Enter genre"/>
	</div>
	<input type="submit" value="Register">
	</form>
</div>
</body>
</html>