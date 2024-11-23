package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/addBooks")
public class AddBooks extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String book_id = req.getParameter("bookId");
		String title_name = req.getParameter("titleName");
		String author_name = req.getParameter("authorName");
		String publisher_name = req.getParameter("publisherName");
		String publication = req.getParameter("publication");
		String genre = req.getParameter("genre");
		PrintWriter out = resp.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root", "ZuBaiR22");
			PreparedStatement ps = conn.prepareStatement("INSERT INTO BOOKS	(book_id, title_name, author_name, publisher_name, publication, genre) VALUES(?,?, ?, ?, ?, ?)");
			ps.setString(1, book_id);
			ps.setString(2, title_name);
			ps.setString(3, author_name);
			ps.setString(4, publisher_name);
			ps.setString(5, publication);
			ps.setString(6, genre);
			
		
			
			int count =	ps.executeUpdate();
			
	
			  PreparedStatement ps1 =
			  conn.prepareStatement("DELETE FROM BOOKS WHERE title_name='' OR author_name=''");
			  ps1.executeUpdate();
			 
			
			
			if (count > 0) {
				resp.setContentType("text/html");
				out.println("<h4 style='color: green; font-family: monospace'>New book added</h4>");
				RequestDispatcher rd = req.getRequestDispatcher("/AddBooks.jsp");
				rd.include(req, resp);
			}else {
				resp.setContentType("text/html");
				out.println("<h4 style='color: red; font-family: monospace'>Book registration unsuccessfull!</h4>");
				
				RequestDispatcher rd = req.getRequestDispatcher("/AddBooks.jsp");
				rd.include(req, resp);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
			resp.setContentType("text/html");
			out.println("<h4 style='color: red; font-family: monospace'>Exception Occured : "+e.getMessage()+"</h4>");
			RequestDispatcher rd = req.getRequestDispatcher("/AddBooks.jsp");
			rd.include(req, resp);
		}
	}
}
