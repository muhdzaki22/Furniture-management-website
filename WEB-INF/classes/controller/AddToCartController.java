package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletResponse;
import dao.CartDAO;

import java.io.IOException;


/**
 * Servlet implementation class RegisterController
 */
 @WebServlet("/AddToCartController")
public class AddToCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CartDAO cdao;  

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartController() {
        super();
        cdao = new CartDAO();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CartDAO.createCart(request);

		int ProdID = Integer.parseInt(request.getParameter("ProdID"));
		cdao.addProductToCart(ProdID, request);
		
		request.setAttribute("cart", CartDAO.viewCart(request));
		RequestDispatcher view = request.getRequestDispatcher("listproductCust.jsp");
		view.forward(request, response);

	}
}