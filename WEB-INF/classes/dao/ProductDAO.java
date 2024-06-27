package dao;

import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;

//import java.util.*;
import db.ConnectionManager;
import bean.Product;
import bean.Supplier;
import bean.Admin;

public class ProductDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	static ResultSet rs = null;
	private static String sql;
	private String ProdName, ProdColour, ProdDesc, ProdCategory, ProdAddInfo, SuppName, ProdImage;
	private int ProdID, adminID, SuppID;
	private int ProdDiscount;
	private int ProdQuantity;
	private float ProdPrice;
	
	//getAllProduct
	public static List< Supplier > getAllSuppliers(){
		List<Supplier> suppliers = new ArrayList<>();

		try {

			con = ConnectionManager.getConnection();

			stmt = con.createStatement();
			//String sql = "SELECT * FROM supplier s INNER JOIN product p ON s.SuppID = p.SuppID ORDER BY SuppID";
			String sql = "SELECT * FROM supplier s";

			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {			
				Supplier s = new Supplier();
				s.setSuppID(rs.getInt("SuppID"));
				s.setSuppName(rs.getString("SuppName"));

				suppliers.add(s);
			}
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return suppliers;
	}
	
	//addProduct
	public void addProduct(Product bean) {
		ProdCategory = bean.getProdCategory();
		ProdName = bean.getProdName();
		ProdPrice = bean.getProdPrice();
		ProdQuantity = bean.getProdQuantity();
		ProdDesc = bean.getProdDesc();
		ProdAddInfo = bean.getProdAddInfo();
	  	SuppID = bean.getSuppID();
		ProdColour = bean.getProdColour();
		adminID = bean.getAdminID();
		ProdImage = bean.getProdImage();
		ProdDiscount = bean.getProdDiscount();
		
	
		try {			

			con = ConnectionManager.getConnection();
			ps = con.prepareStatement("INSERT INTO product(ProdCategory,ProdName,ProdPrice,ProdDesc,ProdAddInfo,ProdColour,ProdQuantity, SuppID, adminID, ProdImage, ProdDiscount)VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, ProdCategory);
			ps.setString(2, ProdName);
			ps.setFloat(3, ProdPrice);
			ps.setString(4, ProdDesc);
			ps.setString(5, ProdAddInfo);
			ps.setString(6, ProdColour);
			ps.setInt(7, ProdQuantity);
			ps.setInt(8, SuppID);
			ps.setInt(9, adminID);
			ps.setString(10, ProdImage);
			ps.setInt(11, ProdDiscount);

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
	
		//getAllProduct
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
		
		//getAllProductwDiscount
				public static List< Product > getDiscountProducts(){
					List<Product> products = new ArrayList<>();

					try {

						con = ConnectionManager.getConnection();

						stmt = con.createStatement();
						String sql = "SELECT * FROM product WHERE ProdDiscount > 0 ORDER BY ProdID";

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
		//get product by id
		public static Product getProductByID(int ProdID) {
			Product p = new Product();
			try {
				con = ConnectionManager.getConnection();
				
				ps = con.prepareStatement("SELECT * FROM product WHERE ProdID=?");
				ps.setInt(1, ProdID);
				
				rs=ps.executeQuery();
				if(rs.next()) {
					p.setProdID(rs.getInt("ProdID"));
					p.setProdCategory(rs.getString("ProdCategory"));
					p.setProdName(rs.getString("ProdName"));
					p.setProdPrice(rs.getFloat("ProdPrice"));
					p.setProdQuantity(rs.getInt("ProdQuantity"));
					p.setProdDesc(rs.getString("ProdDesc"));
					p.setProdAddInfo(rs.getString("ProdAddInfo"));
					p.setProdColour(rs.getString("ProdColour"));
					p.setSuppID(rs.getInt("SuppID"));
					p.setProdImage(rs.getString("ProdImage"));
					p.setProdDiscount(rs.getInt("ProdDiscount"));
					
				}
				con.close();
					
			}catch(Exception e) {
				e.printStackTrace();
			}
			return p;
		}
		
		//Delete Product
		public void DeleteProduct(int ProdID) {
			try {
				con = ConnectionManager.getConnection();
				ps = con.prepareStatement("DELETE FROM product WHERE ProdID=?");
				ps.setInt(1, ProdID);
				ps.executeUpdate();
				con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		public void UpdateProduct(Product bean) {
			
			ProdID = bean.getProdID();
			ProdCategory = bean.getProdCategory();
			ProdName = bean.getProdName();
			ProdPrice = bean.getProdPrice();
			ProdQuantity = bean.getProdQuantity();
			ProdDesc = bean.getProdDesc();
			ProdAddInfo = bean.getProdAddInfo();
		  	SuppID = bean.getSuppID();
			ProdColour = bean.getProdColour();
			ProdImage = bean.getProdImage();
			ProdDiscount = bean.getProdDiscount();
			
			try {
				con = ConnectionManager.getConnection();

				ps = con.prepareStatement("UPDATE product SET ProdCategory=?,ProdName=?,ProdPrice=?,ProdDesc=?,ProdAddInfo=?,SuppID=?,ProdColour=?,ProdQuantity=?,ProdImage=?,ProdDiscount=? WHERE ProdID=?");
				ps.setString(1, ProdCategory);
				ps.setString(2, ProdName);
				ps.setFloat(3, ProdPrice);
				ps.setString(4, ProdDesc);
				ps.setString(5, ProdAddInfo);
				ps.setInt(6, SuppID);
				ps.setString(7, ProdColour);
				ps.setInt(8, ProdQuantity);
				ps.setString(9, ProdImage);
				ps.setInt(10, ProdDiscount);
				ps.setInt(11, ProdID);

				ps.executeUpdate();

				con.close();

			   } catch (SQLException e) {
			       e.printStackTrace();
				
		}
	}
}