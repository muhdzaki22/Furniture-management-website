package dao;

import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

//import java.util.*;
import db.ConnectionManager;
import bean.Admin;
import bean.Delivery;
import bean.Product;

public class DeliveryDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	static ResultSet rs = null;
	private static String sql;
	private String DeliStatus;
	private int DeliID, adminID;
	private float DeliFee;
	
	//Customer-side// 
	//add delivery
	public void addDelivery(Delivery bean) {
		DeliStatus = bean.getDeliStatus();
		DeliFee = bean.getDeliFee();
		adminID = bean.getAdminID();
		
		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//3. create statement
			ps = con.prepareStatement("INSERT INTO delivery(DeliFee, DeliStatus)VALUES(?,?)");
			ps.setFloat(1, DeliFee);
			ps.setString(2, DeliStatus);
			//ps.setInt(3, adminID);
		
			//4. execute query
			ps.executeUpdate();

			
			//5. close connection
			con.close();

		   } catch (SQLException e) {
		       e.printStackTrace();
		       // Display the error message to the user or handle it as needed
		       System.out.println("Error occurred while inserting the delivery: " + e.getMessage());
		   } catch (Exception e) {
		       e.printStackTrace();
		       // Display the error message to the user or handle it as needed
		       System.out.println("An unexpected error occurred: " + e.getMessage());
		   }
		}
	//Get delivery status
	public static Delivery getDeliveryByID(int DeliID) {
		Delivery d = new Delivery();
		try {
			con = ConnectionManager.getConnection();
			
			ps = con.prepareStatement("SELECT * FROM delivery WHERE DeliID=?");
			ps.setInt(1, DeliID);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				d.setDeliID(rs.getInt("DeliID"));
				d.setDeliStatus(rs.getString("DeliStatus"));
				d.setAdminID(rs.getInt("adminID"));
			}
			con.close();
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return d;
	}
	
	//Admin-side
	//List deliveries
	public static List< Delivery > getAllDeliveries(){
		List<Delivery> deliveries = new ArrayList<>();

		try {

			con = ConnectionManager.getConnection();

			stmt = con.createStatement();
			String sql = "SELECT * FROM delivery d";

			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {			
				Delivery d = new Delivery();
				d.setDeliID(rs.getInt("DeliID"));
				d.setDeliStatus(rs.getString("DeliStatus"));
				d.setDeliFee(rs.getFloat("DeliFee"));
				d.setAdminID(rs.getInt("adminID"));

				deliveries.add(d);
			}
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return deliveries;
	}
	
	//Update delivery status
	public void UpdateDelivery(Delivery bean) {
		
		DeliID = bean.getDeliID();
		DeliStatus = bean.getDeliStatus();
		adminID = bean.getAdminID();		
		try {
			con = ConnectionManager.getConnection();

			ps = con.prepareStatement("UPDATE delivery SET DeliStatus=?,adminID=? WHERE DeliID=?");
			ps.setString(1, DeliStatus);
			ps.setInt(2, adminID);
			ps.setInt(3, DeliID);

			ps.executeUpdate();

			con.close();

		   } catch (SQLException e) {
		       e.printStackTrace();
		   }
	}
}