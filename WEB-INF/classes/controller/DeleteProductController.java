package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.ProductDAO;

@WebServlet("/DeleteProductController")
public class DeleteProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private ProductDAO pdao;

    public DeleteProductController() {
        super();
        pdao = new ProductDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ProdID = Integer.parseInt(request.getParameter("ProdID"));
		pdao.DeleteProduct(ProdID);
		request.setAttribute("products",ProductDAO.getAllProducts());
		RequestDispatcher view = request.getRequestDispatcher("listproductV2.jsp");
		view.forward(request, response);
	}


}