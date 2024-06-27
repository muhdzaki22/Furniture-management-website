package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import bean.Product;
import dao.ProductDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

/**
 * Servlet implementation class AddProductController
 */
@MultipartConfig
public class AddProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductDAO pdao;

    public AddProductController() {
        super();
        pdao = new ProductDAO();
    }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {		

			Product p = new Product();
			p.setProdCategory(request.getParameter("ProdCategory"));
			p.setProdName(request.getParameter("ProdName"));
			p.setProdPrice(Float.parseFloat(request.getParameter("ProdPrice")));
			p.setProdQuantity(Integer.parseInt(request.getParameter("ProdQuantity")));
			p.setProdDesc(request.getParameter("ProdDesc"));
			p.setProdAddInfo(request.getParameter("ProdAddInfo"));
		 	p.setSuppID(Integer.parseInt(request.getParameter("SuppID")));
			p.setProdColour(request.getParameter("ProdColour"));
			p.setAdminID(Integer.parseInt(request.getParameter("adminID")));
			p.setProdImage(request.getParameter("ProdImage"));
			p.setProdDiscount(Integer.parseInt(request.getParameter("ProdDiscount")));

			pdao.addProduct(p);

			request.setAttribute("products",ProductDAO.getAllProducts());
			RequestDispatcher view = request.getRequestDispatcher("listproductV2.jsp");
			view.forward(request,response);
		}

		catch(Exception e)
		{
			e.printStackTrace();
		}


	}

}