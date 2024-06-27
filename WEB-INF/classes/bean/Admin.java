package bean;

public class Admin {
	private int adminID;
	private String adminName, adminPassword, adminEmail, adminPhone;
	
	public Admin() {
		
	}
	public Admin(int adminID, String adminName, String adminPassword, String adminEmail, String adminPhone) {
		super();
		this.adminID = adminID;
		this.adminName = adminName;
		this.adminPassword = adminPassword;
		this.adminEmail = adminEmail;
		this.adminPhone = adminPhone;
	}
	public int getAdminID() {
		return adminID;
	}
	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPhone() {
		return adminPhone;
	}
	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}
}
