package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/adminLoginForm")
public class AdminLogin	extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String admin_email = req.getParameter("email01");
		String admin_pass = req.getParameter("pass01");
		PrintWriter out = resp.getWriter();
		
		if(admin_email.equals("zjubair@gmail.com") && admin_pass.equals("Zubair22")) {
			HttpSession session = req.getSession();
			session.setAttribute("admin_name", "Zubair");
			RequestDispatcher rd = req.getRequestDispatcher("/AdminPanel.jsp");
			rd.forward(req, resp);
		}else {
			resp.setContentType("text/html");
			out.println("<h3 style='color: red; font-family: monospace;'>Login failed! You have enter wrong email or password!</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/AdminLogin.jsp");
			rd.include(req, resp);
		}
	}
}
