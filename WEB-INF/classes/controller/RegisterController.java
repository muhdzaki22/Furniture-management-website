package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dao.A1DAO;
import bean.Admin;

import java.io.IOException;


/**
 * Servlet implementation class RegisterController
 */
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A1DAO dao;  

    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        dao = new A1DAO();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Admin model = new Admin();
		
		model.setAdminName(request.getParameter("adminName"));
		model.setAdminEmail(request.getParameter("adminEmail"));
		model.setAdminPassword(request.getParameter("adminPassword"));
		model.setAdminPhone(request.getParameter("adminPhone"));
		
		dao.addAdmin(model);
		
		request.setAttribute("Admins", A1DAO.getAllAdmins());
		RequestDispatcher view = request.getRequestDispatcher("");
		view.forward(request, response);

	}

}
