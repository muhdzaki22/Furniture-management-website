package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dao.DeliveryDAO;
import bean.Delivery;

import java.io.IOException;


/**
 * Servlet implementation class RegisterController
 */
public class AddDeliveryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DeliveryDAO ddao;  

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDeliveryController() {
        super();
        ddao = new DeliveryDAO();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Delivery d = new Delivery();
		
		d.setDeliFee(Float.parseFloat(request.getParameter("DeliFee")));
		
		ddao.addDelivery(d);
		
		request.setAttribute("deliveries", DeliveryDAO.getAllDeliveries());
		RequestDispatcher view = request.getRequestDispatcher("");
		view.forward(request, response);

	}

}
