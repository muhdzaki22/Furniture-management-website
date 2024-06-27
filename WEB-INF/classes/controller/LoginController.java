package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import db.ConnectionManager;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		//int adminID = 0;
		String email = request.getParameter("adminEmail");
		String password = request.getParameter("adminPassword");
		
		try{
			//step1 load the driver class
			Class.forName("com.mysql.jdbc.Driver");
			//step2 create the connection object
			Connection con= ConnectionManager.getConnection();//method call dari DAO 
			//step3 create the statement object
			PreparedStatement ps = con.prepareStatement ("select * from admin where adminEmail=? and adminPassword=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				
				/*PreparedStatement pq = con.prepareStatement ("select adminID from admin where adminEmail=" + email);
				pq.setInt(1,adminID);
				HttpSession session = request.getSession();
				session.setAttribute("adminID", adminID);*/
				
				RequestDispatcher rd = request.getRequestDispatcher("adminHomepageLoad.jsp");//url from .xml
				rd.forward(request,response);
				
			}
			else {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Invalid Email or Password!');");
                pw.println("window.location.href='SignUp.jsp';");
                pw.println("</script>");
				RequestDispatcher rd = request.getRequestDispatcher("SignUp.jsp"); // patah balik pergi login page
				rd.include(request,response);
			}
			
			
			}catch(Exception e){
				e.printStackTrace();
			}
		
	}

}