package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.CartDAO;

/**
 * Servlet implementation class ListProductController
 */
public class ListCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CartDAO cdao;
       
    public ListCartController() {
        super();
        cdao = new CartDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("cart", CartDAO.viewCart(request));
		RequestDispatcher view = request.getRequestDispatcher("");
		view.forward(request,response);
	}
}