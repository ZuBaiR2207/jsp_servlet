package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/updateBooks")
public class UpdateBooks extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		String book_id = req.getParameter("book_id");
		String title_name = req.getParameter("title_name");
		String author_name = req.getParameter("author_name");
		String publisher_name = req.getParameter("publisher_name");
		String publication = req.getParameter("publication");
		String genre = req.getParameter("genre");
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn =	DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db", "root", "ZuBaiR22");
			PreparedStatement ps = conn.prepareStatement("UPDATE  BOOKS set  title_name=?, author_name=?, publisher_name=?, publication=?, genre=? where book_id=?");
			ps.setString(1, title_name);
			ps.setString(2, author_name);
			ps.setString(3, publisher_name);
			ps.setString(4, publication);
			ps.setString(5, genre);
			ps.setString(6, book_id);
			int i = ps.executeUpdate();
			;
			if(i>0){
				resp.setContentType("text/html");
				out.print("<h3 style='color: green; font-family:monospace'>Update Successful</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/UpdateBooks.jsp");
				rd.include(req, resp);
			}else {
				resp.setContentType("text/html");
				out.print("<h3 style='color: red; font-family:monospace'>Update Failed</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/UpdateBooks.jsp");
				rd.include(req, resp);
			}
			
			
		}catch (Exception e) {
			resp.setContentType("text/html");
			out.print("<h3 style='color: red; font-family:monospace'>Update Failed</h3>"+e.getMessage());
			RequestDispatcher rd = req.getRequestDispatcher("/UpdateBooks.jsp");
			rd.include(req, resp);
			
		}
	}
}