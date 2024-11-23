<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Librarian Information</title>
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
	.logo a, img{
	height: 15pt;
	width: 15pt;
	position: relative;
	left: -25%;
	
	}
	.logo:hover{
	transform: scale(1.005);
	}
	}
	form {
	background-color: #ff847c;
	border-radius: 10pt;
	padding-top: 10pt;
	padding-bottom: 10pt;
	
		
}
	input {
	text-align:center;
	
    width: 55%;
	font-family	: monospace;
	display:inline-block;
	background-color: #fecea8;
	border-radius: 3pt;
	margin: 2pt;
}
	select, option{
	text-align:center;
	width: fit-content;
	font-family	: monospace;
	display:inline-block;
	background-color: #fecea8;
	border-radius: 3pt;
	margin: 2pt;
	}
	
	input[type=submit]{
	margin: auto; 
	width: 15%;
	color: #2a363b;
	}
	input[type=submit]:hover{
	transform: scale(1.2);
	color: black;
	} 
	h2 {
    position: relative;
    text-decoration: underline;  
}
	label {
	font-size: 11pt;
	color: #2a361c;
}
</style>
</head>
<body>
	 <div class="container">
	<!--  form for registration -->
	
	<div class="logo">
		<a href="AdminPanel.jsp"><img alt="" src="res/logoBack.png"></a>
	</div>
	<h2>Edit Librarian Account (admin:${admin_name})</h2>
	<div class="edit">
		<form action="editForm" method="post">
			<label for="editOption">Select an option:</label><br><br>
			<select name="editOption" id="editOption">
				<option desabled selected value>--Select an option--</option>
				<option value="name">Name</option>
				<option value="password">Password</option>
				<option value="contact">Contact</option>
				<option value="gender">Gender</option>
				<option value="city">City</option>
			</select><br><br>
			<label for="email_01"> Provide the email of the librarian</label><br><br>
			<input type="text" name="email_01" id="email_01" placeholder="Provide the email id for librarian"><br><br>
			<label for="edited_txt">Provide the desired update</label><br><br>
			<input type="text" name="edited_txt" id="edited_txt" placeholder="Provide the change for the attribute"><br><br>
			<input type="submit" value="Update">
		</form>
	</div>	
</div>
</body>
</html>