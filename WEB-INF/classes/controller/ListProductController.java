package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.ProductDAO;

/**
 * Servlet implementation class ListProductController
 */
public class ListProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductDAO pdao;
       
    public ListProductController() {
        super();
        pdao = new ProductDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("products", ProductDAO.getAllProducts());
		RequestDispatcher view = request.getRequestDispatcher("listproduct.jsp");
		view.forward(request,response);
	}


	}