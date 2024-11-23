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
@WebServlet("/deleteForm")


public class DeleteLibrarian extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email_lib = req.getParameter("emaillib");
		PrintWriter out = resp.getWriter();
		try {
			//connecting to mysql
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection =	DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db", "root", "ZuBaiR22");
			PreparedStatement ps = connection.prepareStatement("DELETE FROM Librarian WHERE Email=?");
			ps.setString(1, email_lib);
			int i = ps.executeUpdate();
			
			if(i>0) {
				resp.setContentType("text/html");
			out.print("<h3 style='color: green; font-family:monospace'>Librarian acoount deleted</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/DeleteLibrarian.jsp");
			rd.include(req, resp);
			}else {
				resp.setContentType("text/html");
				out.print("<h3 style='color: red; font-family:monospace'>Deletation failed !</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/DeleteLibrarian.jsp");
				rd.include(req, resp);
			}
			
		} catch (Exception e) {
			resp.setContentType("text/html");
			out.print("<h3 style='color: red; font-family:monospace'>Deletation failed! Unexpected: </h3>"+e.getMessage());
			RequestDispatcher rd = req.getRequestDispatcher("/DeleteLibrarian.jsp");
			rd.include(req, resp);
		}
	}
}
