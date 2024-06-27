package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import dao.CartDAO;

@WebServlet("/DeleteFromCartController")
public class DeleteFromCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CartDAO cdao;

    public DeleteFromCartController() {
        super();
        cdao = new CartDAO();
	}
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int ProdID = Integer.parseInt(request.getParameter("ProdID"));
		cdao.removeFromCart(ProdID);
		request.setAttribute("cart",CartDAO.viewCart(request));
		RequestDispatcher view = request.getRequestDispatcher("shoppingcart.jsp");
		view.forward(request, response);	
	}
}
