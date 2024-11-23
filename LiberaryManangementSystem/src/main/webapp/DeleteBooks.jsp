<%@page import="java.sql.*"%>
<%		
try {
		String id = request.getParameter("book_id");
			//connecting to mysql
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection =	DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db", "root", "ZuBaiR22");
			PreparedStatement ps = connection.prepareStatement("DELETE FROM BOOKS WHERE book_id=?");
			ps.setString(1, id);
			int i = ps.executeUpdate();
			
			if(i>0) {
				response.setContentType("text/html");
			out.print("<h3 style='color: green; font-family:monospace'>Librarian acoount deleted</h3>");
			RequestDispatcher rd = request.getRequestDispatcher("/DeleteUpdateBooks.jsp");
			rd.include(request, response);
			}else {
				response.setContentType("text/html");
				out.print("<h3 style='color: red; font-family:monospace'>Deletation failed !</h3>");
				RequestDispatcher rd = request.getRequestDispatcher("/DeleteUpdateBooks.jsp");
				rd.include(request, response);
			}
			
		} catch (Exception e) {
			response.setContentType("text/html");
			out.print("<h3 style='color: red; font-family:monospace'>Deletation failed! Unexpected: </h3>"+e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("/DeleteUpdateBooks.jsp");
			rd.include(request, response);
		}
	%>