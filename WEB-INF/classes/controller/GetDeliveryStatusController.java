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
@WebServlet("/GetDeliveryStatusController")
public class GetDeliveryStatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DeliveryDAO ddao;
       
    public GetDeliveryStatusController() {
        super();
        ddao = new DeliveryDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        int DeliID = Integer.parseInt(request.getParameter("DeliID"));
		request.setAttribute("p", DeliveryDAO.getDeliveryByID(DeliID));
		RequestDispatcher view = request.getRequestDispatcher("deliverystatus.jsp");
		view.forward(request, response);
	}
}