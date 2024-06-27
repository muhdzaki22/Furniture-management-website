package dao;

import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import db.ConnectionManager;
import bean.Invoice;
import bean.Product;

public class InvoiceDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	static ResultSet rs = null;
	private static String sql;
	private int InvoiceID;
	private String CustName,CustAdd,CustPhone,CustEmail;
	
	//add customer information to invoice
	public void addInvoice(Invoice bean) {
		CustName = bean.getCustName();
		CustAdd = bean.getCustAdd();
		CustPhone = bean.getCustPhone();
		CustEmail = bean.getCustEmail();
		
		try {
			con = ConnectionManager.getConnection();
			
			ps = con.prepareStatement("INSERT INTO invoice (CustName,CustAdd,CustPhone,CustEmail)VALUES(?,?,?,?)");
			ps.setString(1, CustName);
			ps.setString(2, CustAdd);
			ps.setString(3, CustPhone);
			ps.setString(4, CustEmail);
			
			ps.executeUpdate();
			
			con.close();
			
		} catch (SQLException e) {
		       e.printStackTrace();
		       // Display the error message to the user or handle it as needed
		       System.out.println("Error occurred while inserting the invoice: " + e.getMessage());
		   } catch (Exception e) {
		       e.printStackTrace();
		       // Display the error message to the user or handle it as needed
		       System.out.println("An unexpected error occurred: " + e.getMessage());
		   }
		
	}
	
	//getAllInvoice
	public static List< Invoice > getAllInvoices(){
		List<Invoice> invoices = new ArrayList<>();

		try {

			con = ConnectionManager.getConnection();

			stmt = con.createStatement();
			String sql = "SELECT * FROM invoice ORDER BY InvoiceID";

			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {			
				Invoice c = new Invoice();
				c.setInvoiceID(rs.getInt("InvoiceID"));
				c.setCustName(rs.getString("CustName"));
				c.setCustAdd(rs.getString("CustAdd"));
				c.setCustPhone(rs.getString("CustPhone"));
				c.setCustEmail(rs.getString("CustEmail"));

				invoices.add(c);
			}

			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		return invoices;
	
}
	//get invoice by id
	public static Invoice getInvoiceByID(int InvoiceID) {
		Invoice c = new Invoice();
		try {
			con = ConnectionManager.getConnection();
			
			ps = con.prepareStatement("SELECT * FROM invoice WHERE InvoiceID=?");
			ps.setInt(1, InvoiceID);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				c.setInvoiceID(rs.getInt("InvoiceID"));
				c.setCustName(rs.getString("CustName"));
				c.setCustAdd(rs.getString("CustAdd"));
				c.setCustPhone(rs.getString("CustPhone"));
				c.setCustEmail(rs.getString("CustEmail"));
				
			}
			con.close();
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c;
	}
}
