package dao;

import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;

//import java.util.*;
import db.ConnectionManager;
import bean.Product;
import bean.Purchase;
import bean.Delivery;
import bean.Invoice;

public class PurchaseDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	static ResultSet rs = null;
	//private static String sql;
	private int ProdQuantity;
	private float ProdPrice;
	private String ProdName,ProdColour,ProdCategory,CustName,CustPhone,CustEmail,CustAdd;
	
	//Get quantity of all products
	public static List<Purchase> getAllStock(){
		List<Purchase> purchase = new ArrayList<Purchase>();
		
		try {

			con = ConnectionManager.getConnection();

			stmt = con.createStatement();
			String sql = "SELECT ProdName, SUM(ProdQuantity) FROM product GROUP BY ProdName";

			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {			
				Purchase pur = new Purchase();
				pur.setProdName(rs.getString(1));
				pur.setProdQuantity(rs.getInt(2));
				purchase.add(pur);
			}
			con.close();

		   } catch (SQLException e) {
		       e.printStackTrace();
		       // Display the error message to the user or handle it as needed
		       System.out.println("Error occurred: " + e.getMessage());
		   } catch (Exception e) {
		       e.printStackTrace();
		       // Display the error message to the user or handle it as needed
		       System.out.println("An unexpected error occurred: " + e.getMessage());
		   }
		return purchase;
	}
	
	//Sales of each product sort by month
	public static List<Purchase> getMonthlySales(int Month) {
		List<Purchase> purchase = new ArrayList<Purchase>();
		
		try {
			con = ConnectionManager.getConnection();
			
			ps = con.prepareStatement("SELECT p.ProdName, COUNT(p.ProdName) FROM cart c INNER JOIN product p ON p.ProdID = c.ProdID WHERE c.PurcID in (SELECT PurcID FROM purchase WHERE InvoiceID in	(SELECT InvoiceID FROM receipt WHERE month(DateTime) = ?)) GROUP BY p.ProdName;");
			ps.setInt(1, Month);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				Purchase pur = new Purchase();
				pur.setProdName(rs.getString(1));
				pur.setProdQuantity(rs.getInt(2));
			}
			con.close();
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return purchase;
	}
	/*public static Object[][] getYearlyRev() {
		
	}*/
	
	public static List< Product > getAllProducts(){
		List<Product> products = new ArrayList<>();

		try {

			con = ConnectionManager.getConnection();

			stmt = con.createStatement();
			String sql = "SELECT * FROM product ORDER BY ProdID";

			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {			
				Product p = new Product();
				p.setProdID(rs.getInt("ProdID"));
				p.setProdCategory(rs.getString("ProdCategory"));
				p.setProdName(rs.getString("ProdName"));
				p.setProdPrice(rs.getFloat("ProdPrice"));
				p.setProdQuantity(rs.getInt("ProdQuantity"));
				p.setProdDesc(rs.getString("ProdDesc"));
				p.setProdAddInfo(rs.getString("ProdAddInfo"));
				p.setProdColour(rs.getString("ProdColour"));
				p.setProdImage(rs.getString("ProdImage"));
				p.setProdDiscount(rs.getInt("ProdDiscount"));
				products.add(p);
			}

			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		return products;
	
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
}