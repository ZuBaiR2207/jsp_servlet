<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Update Books</title>
	<!-- Style CSS including -->
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
	form {
	background-color: #ff847c;
	border-radius: 10pt;
	padding-top: 10pt;
	padding-bottom: 10pt;
	font-family: monospace;
}
	.form-group input{
	text-align: center;
	background-color: #fecea8;
	border-radius: 3pt;
	width: 70%;
	margin: auto;
	font-family: monospace;
	}
	.btn{
	background-color: #fecea8;
	border: none;
	color: #2a363b;
	}
.btn:hover{
	transform: scale(1.2);
	color: black;
	background-color: #fecea8;
}
h4 {
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
	<div class="container">
		<!--  style="color: white; height: 600px; width: 300px; position: relative; margin: auto; padding: 30px; background-color: green; font-family: monospace;"-->
		<!--  form for registration -->
		<div class="logo">
			<a href="LibProfile.jsp"><img alt="" src="res/logoBack.png"></a>
		</div>
		<h4>Update Books (Librarian:${lib_name})</h4>
		<br>
		<br>
		
		
		<form action="updateBooks" method="post">
		<!-- 	Java code  -->
	<%
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn =	DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db", "root", "ZuBaiR22");
		String book_id = request.getParameter("book_id");
		String title_name = request.getParameter("title_name");
		String author_name = request.getParameter("author_name");
		String publisher_name = request.getParameter("publisher_name");
		String publication = request.getParameter("publication");
		String genre = request.getParameter("genre");
		PreparedStatement ps = conn.prepareStatement("select*from BOOKS where book_id=?");
		ps.setString(1, book_id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
		
	%>
			<div class="jds">
			<input type="hidden" value="<%= rs.getString("book_id") %>" name="book_id" />
			</div>
			<div class="form-group">
			<label for="titleName">Titile Name</label><br> 
			<input type="text" value="<%= rs.getString("title_name") %>" name="title_name" class="form-control" placeholder="Enter book name" />
			</div>
			<div class="form-group">
			<label>Author Name</label>
			<input type="text" value="<%=rs.getString("author_name") %>" class="form-control form-control-sm" name="author_name" placeholder="Enter author name" />
			</div>
			<div class="form-group">
			<label>Publisher</label>
			<input type="text" value=" <%= rs.getString("publisher_name")%>" class="form-control form-control-sm" name="publisher_name" placeholder="Enter publisher name" />
			</div>
			<div class="form-group">
			<label>Publication</label>
			<input type="text" value="<%= rs.getString("publication") %>" class="form-control form-control-sm" name="publication" placeholder="Enter publication">
			</div>
			<div class="form-group">
			<label>Genre </label>
			<input type="text" value="<%= rs.getString("genre") %>" class="form-control form-control-sm" name="genre" placeholder="Enter genre" />
			</div>
			 <%
		}
	}catch(Exception e){
		out.print(e.getMessage());
	}
			%> 
			<br><button type="submit" class="btn btn-primary sm" aria-pressed="true">Update</button>
		</form>
		
	</div>
</body>
</html>