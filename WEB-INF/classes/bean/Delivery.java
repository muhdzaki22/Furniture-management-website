package bean;

public class Delivery {
	
	String DeliStatus;
	float DeliFee;
	int DeliID, AdminID;
	
	public Delivery( String deliStatus, float deliFee, int deliID, int adminID) {
		super();
		DeliStatus = deliStatus;
		DeliFee = deliFee;
		DeliID = deliID;
		AdminID = adminID;
	}
	public Delivery() {
		
	}

	public String getDeliStatus() {
		return DeliStatus;
	}

	public float getDeliFee() {
		return DeliFee;
	}

	public int getDeliID() {
		return DeliID;
	}

	public int getAdminID() {
		return AdminID;
	}

	public void setDeliStatus(String deliStatus) {
		DeliStatus = deliStatus;
	}

	public void setDeliFee(float deliFee) {
		DeliFee = deliFee;
	}

	public void setDeliID(int deliID) {
		DeliID = deliID;
	}

	public void setAdminID(int adminID) {
		AdminID = adminID;
	}
}