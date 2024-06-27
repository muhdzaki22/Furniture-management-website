package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.DeliveryDAO;

/**
 * Servlet implementation class ListProductController
 */
public class ListDeliveryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DeliveryDAO ddao;
       
    public ListDeliveryController() {
        super();
        ddao = new DeliveryDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("deliveries", DeliveryDAO.getAllDeliveries());
		RequestDispatcher view = request.getRequestDispatcher("");
		view.forward(request,response);
	}
}