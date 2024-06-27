package dao;

import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.*;
import db.ConnectionManager;
import bean.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class CartDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	static ResultSet rs = null;
	private static String sql;
	private int ProdID;
	private int PurcID;
	
	//new session cart
	public static void createCart(HttpServletRequest req) {
		HttpSession session = req.getSession();
		Object cartSession = session.getAttribute("PurcID");

		if(!(cartSession instanceof Integer)&& cartSession == null) {
			try {
				con = ConnectionManager.getConnection();
				stmt = con.createStatement();
				sql = "INSERT INTO purchase (PurcTotal) VALUES('0')";
		
				stmt.executeUpdate(sql);
				
				sql = "SELECT PurcID FROM purchase LIMIT 1";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					cartSession = rs.getInt("PurcID");
				}
		
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
				// Display the error message to the user or handle it as needed
				System.out.println("Error occurred while inserting the product: " + e.getMessage());
			} catch (Exception e) {
				e.printStackTrace();
				// Display the error message to the user or handle it as needed
				System.out.println("An unexpected error occurred: " + e.getMessage());
			}
		}
		session.setAttribute("PurcID", cartSession);
		//return req;
	}
	
	//getAllCart
	public static List<Product> viewCart(HttpServletRequest req){
		HttpSession session = req.getSession();
		int cartSession = (Integer)session.getAttribute("PurcID");
		
		List<Product> cart = new ArrayList<>();
		try {
			con = ConnectionManager.getConnection();

			ps = con.prepareStatement("SELECT * FROM product p INNER JOIN cart c ON p.ProdID = c.PRodID WHERE c.PurcID=?");
			ps.setInt(1, cartSession);

			rs = ps.executeQuery();
			
			while(rs.next()) {
				Product p = new Product();
				p.setProdID(rs.getInt("ProdID"));
				p.setProdImage(rs.getString("ProdImage"));
				p.setProdName(rs.getString("ProdName"));
				p.setProdDesc(rs.getString("ProdDesc"));
				p.setProdColour(rs.getString("ProdColour"));
				p.setProdPrice(rs.getFloat("ProdPrice"));
				p.setProdDiscount(rs.getInt("ProdDiscount"));
				
				cart.add(p);
			}
			con.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return cart;
	}
	
	//addCart
	public void addProductToCart(int ProdID, HttpServletRequest req) {
		HttpSession session = req.getSession();
		int cartSession = (Integer)session.getAttribute("PurcID");
	
		try {			
			con = ConnectionManager.getConnection();
			ps = con.prepareStatement("INSERT INTO cart(ProdID, PurcID)VALUES(?,?)");
			ps.setInt(1, ProdID);
			ps.setInt(2, cartSession);

			ps.executeUpdate();

			con.close();

	   } catch (SQLException e) {
	       e.printStackTrace();
	       // Display the error message to the user or handle it as needed
	       System.out.println("Error occurred while inserting the product: " + e.getMessage());
	   } catch (Exception e) {
	       e.printStackTrace();
	       // Display the error message to the user or handle it as needed
	       System.out.println("An unexpected error occurred: " + e.getMessage());
	   }
	}

	
	//Delete Product
	public void removeFromCart(int ProdID) {
		try {
			con = ConnectionManager.getConnection();
			ps = con.prepareStatement("DELETE FROM cart WHERE ProdID=?");
			ps.setInt(1, ProdID);
			ps.executeUpdate();
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public int getCartAmount(HttpServletRequest req) {
		int amt = 0;

		HttpSession session = req.getSession();
		int cartSession = (Integer)session.getAttribute("PurcID");
	
		try {			
			con = ConnectionManager.getConnection();
			ps = con.prepareStatement("SELECT ProdID FROM CART WHERE PurcID=?");
			ps.setInt(1, cartSession);
			rs = ps.executeQuery();

			while(rs.next())
				amt++;

			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return amt;
	}
	
	//calculate total cost of products in cart
	public float calcPurcTotal(List<Product> cart) {
		float total = 0;
		
		

		return total;
	}
}