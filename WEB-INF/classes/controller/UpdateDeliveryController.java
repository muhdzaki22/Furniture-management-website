package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import bean.Delivery;
import dao.DeliveryDAO;


@WebServlet("/UpdateDeliveryController")
public class UpdateDeliveryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DeliveryDAO ddao;  
    
    public UpdateDeliveryController() {
        super();
        ddao = new DeliveryDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int DeliID = Integer.parseInt(request.getParameter("DeliID"));
		request.setAttribute("d", DeliveryDAO.getDeliveryByID(DeliID));
		RequestDispatcher view = request.getRequestDispatcher("updatedeliveryV2.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Delivery d = new Delivery();
		d.setDeliID(Integer.parseInt(request.getParameter("DeliID")));
		d.setDeliStatus(request.getParameter("DeliStatus"));
		d.setAdminID(Integer.parseInt(request.getParameter("adminID")));
		
		ddao.UpdateDelivery(d);
		
		request.setAttribute("deliveries", DeliveryDAO.getAllDeliveries());
		RequestDispatcher view = request.getRequestDispatcher("listdeliveryV2.jsp");
		view.forward(request, response);
	}

}