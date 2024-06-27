package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import bean.Product;
import dao.ProductDAO;


@WebServlet("/UpdateProductControler")
public class UpdateProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductDAO pdao;  
    
    public UpdateProductController() {
        super();
        pdao = new ProductDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ProdID = Integer.parseInt(request.getParameter("ProdID"));
		request.setAttribute("p", ProductDAO.getProductByID(ProdID));
		RequestDispatcher view = request.getRequestDispatcher("updateproductV2.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Product p = new Product();
		p.setProdID(Integer.parseInt(request.getParameter("ProdID")));
		p.setProdCategory(request.getParameter("ProdCategory"));
		p.setProdName(request.getParameter("ProdName"));
		p.setProdPrice(Float.parseFloat(request.getParameter("ProdPrice")));
		p.setProdQuantity(Integer.parseInt(request.getParameter("ProdQuantity")));
		p.setProdDesc(request.getParameter("ProdDesc"));
		p.setProdAddInfo(request.getParameter("ProdAddInfo"));
	 	p.setSuppID(Integer.parseInt(request.getParameter("SuppID")));
		p.setProdColour(request.getParameter("ProdColour"));
		p.setProdImage(request.getParameter("ProdImage"));
		p.setProdDiscount(Integer.parseInt(request.getParameter("ProdDiscount")));
		
		pdao.UpdateProduct(p);
		
		request.setAttribute("products", ProductDAO.getAllProducts());
		RequestDispatcher view = request.getRequestDispatcher("listproductV2.jsp");
		view.forward(request, response);
	}

}