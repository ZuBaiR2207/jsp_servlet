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
@WebServlet("/librarianView")
public class ShowLibrarian extends HttpServlet{
	
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		try {
			//connecting with mysql server
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root", "ZuBaiR22");
		//fatching data from database
		 PreparedStatement ps = conn.prepareStatement("SELECT * FROM LIBRARIAN");
		 ResultSet rs = ps.executeQuery();
		 
		 out.println("<html><body><a href='AdminPanel.jsp'>back</a><br><br><table border='1' style='font-family: monospace;'><tr><th>Name</th><th>Email</th><th>Password</th><th>Contact</th><th>Gender</th><th>City</th></tr>");
		 while(rs.next()) {
			 //deploying requestdispatcher
			 resp.setContentType("text/html");
			 String name = rs.getString("Name");
			 String email = rs.getString("Email");
			 String pass = rs.getString("Password");
			 String contact = rs.getString("Contact");
			 String gender = rs.getString("Gender");
			 String city = rs.getString("City");
			 out.println("<tr><td>"+name+"</td><td>"+email+"</td><td>"+pass+"</td><td>"+contact+"</td><td>"+gender+"</td><td>"+city+"</td></tr>");
			 
	
		 }
		 out.println("</table></body></html>");
		 
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
