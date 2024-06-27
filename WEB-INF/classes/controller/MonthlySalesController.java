package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.PurchaseDAO;

/**
 * Servlet implementation class ListProductController
 */
@WebServlet("/MonthlySalesController")
public class MonthlySalesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PurchaseDAO purdao;
       
    public MonthlySalesController() {
        super();
        purdao = new PurchaseDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String textMonth = request.getParameter("bulan");
		if(textMonth==null)
			textMonth = "0";
		int bulan = Integer.parseInt(textMonth);
		request.setAttribute("pur", PurchaseDAO.getMonthlySales(bulan));
		request.setAttribute("bulan", bulan);
		RequestDispatcher view = request.getRequestDispatcher("analytics.jsp");
		view.forward(request,response);
	}
}