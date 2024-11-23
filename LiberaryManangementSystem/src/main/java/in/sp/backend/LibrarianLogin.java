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
import jakarta.servlet.http.HttpSession;
@WebServlet("/loginForm")
public class LibrarianLogin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email_lib = req.getParameter("email01");
		String pass_lib = req.getParameter("pass01");
		
		PrintWriter out = resp.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection =	DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db", "root", "ZuBaiR22");
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM Librarian WHERE Email=? AND Password=?");
			ps.setString(1, email_lib);
			ps.setString(2, pass_lib);
			ResultSet rs = ps.executeQuery();
			
			//condtion to check if email and pass are match or not
			if(rs.next()) {
				HttpSession session = req.getSession();
				session.setAttribute("lib_name", rs.getString("Name"));
				RequestDispatcher rd = req.getRequestDispatcher("/LibProfile.jsp");
				rd.include(req, resp);
				
				
			}else {
				resp.setContentType("text/html");
				
				out.println("<h3 style='color: red; font-family: monospace';>Log in Failed! </h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			resp.setContentType("text/html");
			
			out.println("<h3 style='color: red; font-family: monospace';>Log in Failed! Error Occured: </h3>"+e.getMessage());
			RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
			rd.include(req, resp);
		}
	}
}
