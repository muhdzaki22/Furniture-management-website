package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import db.TextManager;

/**
 * Servlet implementation class PagetextController
 */
public class PagetextController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TextManager tm;
       
    /**
     * @throws IOException 
     * @see HttpServlet#HttpServlet()
     */
    public PagetextController() throws IOException {
        super();
        tm = new TextManager();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a = request.getParameter("newT0");
		String b = request.getParameter("newT1");
		String c = request.getParameter("newT2");
		String d = request.getParameter("newT3");
		String e = request.getParameter("newT4");
		String f = request.getParameter("newT5");
		
		tm.update(a, b, c, d, e, f);
		
		request.setAttribute("oldText",tm);
		RequestDispatcher view = request.getRequestDispatcher("adminHomepageLoad.jsp");
		view.forward(request,response);
	}

}
