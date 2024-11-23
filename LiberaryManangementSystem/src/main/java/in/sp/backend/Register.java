package in.sp.backend;

import java.awt.Color;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.NumberFormat.Style;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/registerForm")
public class Register extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		// TODO Auto-generated method stub
		String name_01 = req.getParameter("name01");
		String pass_01 = req.getParameter("pass01");
		String cont_01 = req.getParameter("cont01");
		String email_01 = req.getParameter("email01");
		String city_01 = req.getParameter("city01");
		String gen_01 =req.getParameter("gen01");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root", "ZuBaiR22");
			PreparedStatement ps = conn.prepareStatement("INSERT INTO librarian	VALUES(?, ?, ?, ?, ?, ?)");
			
			ps.setString(1, name_01);
			ps.setString(2, email_01);
			ps.setString(3, pass_01);
			ps.setString(4, cont_01);
			ps.setString(5, gen_01);
			ps.setString(6, city_01);
		
			
			int count =	ps.executeUpdate();
			
			PreparedStatement ps1 = conn.prepareStatement("DELETE FROM LIBRARIAN WHERE NAME='' OR CONTACT=''");
			
			ps1.executeUpdate();
			
			
			if (count > 0) {
				resp.setContentType("text/html");
				out.println("<h4 style='color: green; font-family: monospace'>Register Successful</h4>");
				RequestDispatcher rd = req.getRequestDispatcher("/AdminPanel.jsp");
				rd.include(req, resp);
			}else {
				resp.setContentType("text/html");
				out.println("<h4 style='color: red; font-family: monospace'>Register unsuccessfull!</h4>");
				
				RequestDispatcher rd = req.getRequestDispatcher("/Register.jsp");
				rd.include(req, resp);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
			resp.setContentType("text/html");
			out.println("<h4 style='color: red; font-family: monospace'>Exception Occured : "+e.getMessage()+"</h4>");
			RequestDispatcher rd = req.getRequestDispatcher("/Register.jsp");
			rd.include(req, resp);
		}
	}
}
