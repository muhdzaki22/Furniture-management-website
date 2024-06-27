package controller;

import java.io.IOException;

import dao.ProductDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewShawlController
 */
@WebServlet("/ViewProductController")
public class ViewProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductDAO pdao;       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewProductController() {
        super();
        pdao = new ProductDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int ProdID = Integer.parseInt(request.getParameter("ProdID"));
		request.setAttribute("p", ProductDAO.getProductByID(ProdID));
		RequestDispatcher view = request.getRequestDispatcher("viewproductCust.jsp");
		view.forward(request, response);
	}
}