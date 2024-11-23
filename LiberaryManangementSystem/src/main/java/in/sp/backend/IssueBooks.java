package in.sp.backend;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/issueBooks")
public class IssueBooks extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		String book_id = req.getParameter("book_id");
		String title_name = req.getParameter("title_name");
		String author_name = req.getParameter("author_name");
		String publisher_name = req.getParameter("publisher_name");
		String publication = req.getParameter("publication");
		String genre = req.getParameter("genre");
		String issue_date = req.getParameter("issue_date");
		String return_date = req.getParameter("return_date");
        
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db", "root", "ZuBaiR22");
			PreparedStatement ps = conn.prepareStatement("INSERT INTO ISBOOKS VALUES(?,?,?,?,?,?,?,?)");
			ps.setString(1, book_id);
			ps.setString(2, title_name);
			ps.setString(3, author_name);
			ps.setString(4, publisher_name);
			ps.setString(5, publication);
			ps.setString(6, genre);
			ps.setString(7, issue_date);
			ps.setString(8, return_date);
			int i = ps.executeUpdate();
			PreparedStatement ps2 = conn.prepareStatement("DELETE FROM BOOKS WHERE book_id=?");
			ps2.setString(1, book_id);
			ps2.executeUpdate();
		
		
			if(i>0) {
				resp.setContentType("text/html");
				out.println("<h4 style='color: green; font-family: monospace'>Issuing book Successful</h4>");
				RequestDispatcher rd = req.getRequestDispatcher("/IssueBooks.jsp");
				rd.include(req, resp);
			}else {
				resp.setContentType("text/html");
				out.println("<h4 style='color: red; font-family: monospace'>Issuing book faild!</h4>");
				RequestDispatcher rd = req.getRequestDispatcher("/IssueBooks.jsp");
				rd.include(req, resp);
			}
			
			
			
			
		} catch (Exception e) {
			resp.setContentType("text/html");
			out.println("<h4 style='color: red; font-family: monospace'>Issuing book faild! Exception occured: </h4>"+e.getMessage());
			RequestDispatcher rd = req.getRequestDispatcher("/IssueBooks.jsp");
			rd.include(req, resp);
		}
		
	}
}
