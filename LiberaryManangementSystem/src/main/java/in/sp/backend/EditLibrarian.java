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
@WebServlet("/editForm")
public class EditLibrarian extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String edit_option = req.getParameter("editOption");
		String email_01 = req.getParameter("email_01");
		String edited_txt = req.getParameter("edited_txt");
		PrintWriter out = resp.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection =	DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db", "root", "ZuBaiR22");
			
			//Edit for Name 
			if(edit_option.equals("name")) {
				PreparedStatement ps = connection.prepareStatement("UPDATE Librarian SET Name=? WHERE Email=?");
				ps.setString(1, edited_txt);
				ps.setString(2, email_01);
				int count = ps.executeUpdate();
					if(count>0) {
				resp.setContentType("text/html");
				out.print("<h3 style='color: green; font-family:monospace'>Update Successful</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/EditLibrarian.jsp");
				rd.include(req, resp);
				}else {
					resp.setContentType("text/html");
					out.print("<h3 style='color: red; font-family:monospace'>Update Failed !</h3>");
					RequestDispatcher rd = req.getRequestDispatcher("/EditLibrarian.jsp");
					rd.include(req, resp);
				}
			}
			
			//Edit Password
			else if(edit_option.equals("password")) {
				PreparedStatement ps = connection.prepareStatement("UPDATE Librarian SET Password=? WHERE Email=?");
				ps.setString(1, edited_txt);
				ps.setString(2, email_01);
				int count = ps.executeUpdate();
					if(count>0) {
				resp.setContentType("text/html");
				out.print("<h3 style='color: green; font-family:monospace'>Update Successful</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/EditLibrarian.jsp");
				rd.include(req, resp);
				}else {
					resp.setContentType("text/html");
					out.print("<h3 style='color: red; font-family:monospace'>Update Failed !</h3>");
					RequestDispatcher rd = req.getRequestDispatcher("/EditLibrarian.jsp");
					rd.include(req, resp);
				}
			}
			// Edit Contact
			else if(edit_option.equals("contact")) {
				PreparedStatement ps = connection.prepareStatement("UPDATE Librarian SET Contact=? WHERE Email=?");
				ps.setString(1, edited_txt);
				ps.setString(2, email_01);
				int count = ps.executeUpdate();
					if(count>0) {
				resp.setContentType("text/html");
				out.print("<h3 style='color: green; font-family:monospace'>Update Successful</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/EditLibrarian.jsp");
				rd.include(req, resp);
				}else {
					resp.setContentType("text/html");
					out.print("<h3 style='color: red; font-family:monospace'>Update Failed !</h3>");
					RequestDispatcher rd = req.getRequestDispatcher("/EditLibrarian.jsp");
					rd.include(req, resp);
					}
				}
			
			//Edit Gender
			else if(edit_option.equals("gender")) {
				PreparedStatement ps = connection.prepareStatement("UPDATE Librarian SET Gender=? WHERE Email=?");
				ps.setString(1, edited_txt);
				ps.setString(2, email_01);
				int count = ps.executeUpdate();
					if(count>0) {
				resp.setContentType("text/html");
				out.print("<h3 style='color: green; font-family:monospace'>Update Successful</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/EditLibrarian.jsp");
				rd.include(req, resp);
				}else {
					resp.setContentType("text/html");
					out.print("<h3 style='color: red; font-family:monospace'>Update Failed !</h3>");
					RequestDispatcher rd = req.getRequestDispatcher("/EditLibrarian.jsp");
					rd.include(req, resp);
					}
				}
			
			// Edit City
			else if(edit_option.equals("city")) {
				PreparedStatement ps = connection.prepareStatement("UPDATE Librarian SET City=? WHERE Email=?");
				ps.setString(1, edited_txt);
				ps.setString(2, email_01);
				int count = ps.executeUpdate();
					if(count>0) {
				resp.setContentType("text/html");
				out.print("<h3 style='color: green; font-family:monospace'>Update Successful</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("EditLibrarian.jsp");
				rd.include(req, resp);
				}else {
					resp.setContentType("text/html");
					out.print("<h3 style='color: red; font-family:monospace'>Update Failed !</h3>");
					RequestDispatcher rd = req.getRequestDispatcher("EditLibrarian.jsp");
					rd.include(req, resp);
					}
				}
			} catch (Exception e) {
				resp.setContentType("text/html");
				out.print("<h3 style='color: red; font-family:monospace'>Update Failed ! Unexpected error : </h3>"+e.getMessage());
				RequestDispatcher rd = req.getRequestDispatcher("EditLibrarian.jsp");
				rd.include(req, resp);
		}
	}
}