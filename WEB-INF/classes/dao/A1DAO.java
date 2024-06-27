package dao;

import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

//import java.util.*;
import db.ConnectionManager;
import bean.Admin;

public class A1DAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	static ResultSet rs = null;
	private static String sql;
	private int adminID;
	private String adminName, adminPassword, adminEmail, adminPhone;
	
	
	public void addAdmin(Admin bean) {
		adminName = bean.getAdminName();
		adminPassword = bean.getAdminPassword();
		adminEmail = bean.getAdminEmail();
		adminPhone = bean.getAdminPhone();
		
		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//3. create statement
			ps = con.prepareStatement("INSERT INTO admin(adminName, adminPassword, adminEmail,adminPhone)VALUES(?,?,?,?)");
			ps.setString(1, adminName);
			ps.setString(2, adminPassword);
			ps.setString(3, adminEmail);
			ps.setString(4, adminPhone);
		
			//4. execute query
			ps.executeUpdate();

			
			//5. close connection
			con.close();

		   } catch (SQLException e) {
		       e.printStackTrace();
		       // Display the error message to the user or handle it as needed
		       System.out.println("Error occurred while inserting the book: " + e.getMessage());
		   } catch (Exception e) {
		       e.printStackTrace();
		       // Display the error message to the user or handle it as needed
		       System.out.println("An unexpected error occurred: " + e.getMessage());
		   }
		}
		//getAllAdmin
		public static List< Admin > getAllAdmins(){
			List<Admin> admins = new ArrayList<Admin>();

			try {
				//call getConnection() method
				con = ConnectionManager.getConnection();

				//3. create statement 
				stmt = con.createStatement();
				String sql = "SELECT * FROM admin ORDER BY adminID";

				//4. execute query
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {				//process result
					Admin s = new Admin();
					s.setAdminID(rs.getInt("adminID"));
					s.setAdminName(rs.getString("adminName"));
					s.setAdminPassword(rs.getString("adminPassword"));
					s.setAdminEmail(rs.getString("adminEmail"));
					s.setAdminPhone(rs.getString("adminPhone"));
					admins.add(s);
				}

				//5. close connection
				con.close();

			}catch(Exception e) {
				e.printStackTrace();
			}
			return admins;
		

	}
		public void loginAdmin(Admin bean) {
			adminName = bean.getAdminName();
			adminPassword = bean.getAdminPassword();
			adminEmail = bean.getAdminEmail();
			adminPhone = bean.getAdminPhone();
			
			try {			
				//call getConnection() method
				con = ConnectionManager.getConnection();
			

				//3. create statement
				stmt = con.createStatement();
				rs = stmt.executeQuery("select * from admin where adminEmail = '"+adminEmail+"'");
				if(rs.next()){System.out.println("Login Sucessfully");
				}
			

				//4. execute query
				ps.executeUpdate();

				
				//5. close connection
				con.close();

			   } catch (SQLException e) {
			       e.printStackTrace();
			       // Display the error message to the user or handle it as needed
			       System.out.println("Error occurred while inserting the book: " + e.getMessage());
			   } catch (Exception e) {
			       e.printStackTrace();
			       // Display the error message to the user or handle it as needed
			       System.out.println("An unexpected error occurred: " + e.getMessage());
			   }
			}
}
