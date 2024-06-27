package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import bean.Invoice;
import dao.InvoiceDAO;
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
public class AddInvoiceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private InvoiceDAO cdao;

    public AddInvoiceController() {
        super();
        cdao = new InvoiceDAO();
    }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {

			Invoice c = new Invoice();
			c.setCustName(request.getParameter("CustName"));
			c.setCustAdd(request.getParameter("CustAdd"));
			c.setCustPhone(request.getParameter("CustPhone"));
			c.setCustEmail(request.getParameter("CustEmail"));
	
			cdao.addInvoice(c);

			request.setAttribute("invoices",InvoiceDAO.getAllInvoices());
			RequestDispatcher view = request.getRequestDispatcher("");
			view.forward(request,response);
		}

		catch(Exception e)
		{
			e.printStackTrace();
		}


	}

}