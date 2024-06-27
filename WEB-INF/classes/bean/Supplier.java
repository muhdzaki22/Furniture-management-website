package bean;

import dao.ProductDAO;
import java.util.List;

public class Supplier {
	private String SuppName;
	private int SuppID;
	
	public Supplier() {};
	public Supplier(String suppName, int suppID) {
		super();
		SuppName = suppName;
		SuppID = suppID;
	}
	public String getSuppName() {
		return SuppName;
	}
	public int getSuppID() {
		return SuppID;
	}
	public void setSuppName(String suppName) {
		SuppName = suppName;
	}
	public void setSuppID(int suppID) {
		SuppID = suppID;
	}
}