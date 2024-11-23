<%@page import="org.eclipse.jdt.internal.compiler.flow.TryFlowContext"%>
<%@page import="jakarta.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="com.mysql.cj.Query"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.WhileStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<title>Librarians</title>
<style>
body {
	background-image: url("res/Library_bg.jpg");
}

.cont {
	text-align: center;
	color: #2a363b;
	height: 500pt;
	width: 60%;
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

.header h4 {
	position: relative;
	text-decoration: underline;
	font-size: 16pt;
	font-weight: bold;
}

.bold {
	font-weight: bold;
}

thead {
	background-color: #ff847c;
}
</style>
</head>
<body>
	<div class="cont">
		<div class="logo">
			<a href="AdminPanel.jsp"><img alt="" src="res/logoBack.png"></a>
		</div>
		<div class="header">
			<h4>Librarian Account</h4>
			<br>
			<br>
		</div>
		<!-- Table to show books -->
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr class="bold">
						<td>Name</td>
						<td>Email</td>
						<td>Password</td>
						<td>Contact</td>
						<td>Gender</td>
						<td>City</td>
					</tr>
				</thead>
				<tbody>
					<!-- 	javaCode -->
					<%
					//connecting with mysql server
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db", "root", "ZuBaiR22");
						PreparedStatement ps = conn.prepareStatement("SELECT * FROM Librarian");
						ResultSet rs = ps.executeQuery();
						while (rs.next()) {
						//	String id = rs.getString("book_id");
					%>

					<tr>
						<td><%=rs.getString("Name")%></td>
						<td><%=rs.getString("Email")%></td>
						<td><%=rs.getString("Password")%></td>
						<td><%=rs.getString("Contact")%></td>
						<td><%=rs.getString("Gender")%></td>
						<td><%=rs.getString("City")%></td>
					</tr>

					<!-- //javacode -->
					<%
					}
					conn.close();
					} catch (Exception e) {
					out.print(e.getMessage());
					}
					%>
				</tbody>
				<table>
					</div>
</body>
</html>