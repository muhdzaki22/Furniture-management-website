package bean;
public class Product {
	private String  ProdName, ProdColour, ProdDesc, ProdCategory, ProdAddInfo, ProdImage;
	private int ProdID,AdminID,SuppID;
	private int ProdDiscount;
	private int ProdQuantity;
	private float ProdPrice, DiscPrice;
	
	public Product() {
	}
	public Product(String prodName, String prodColour, String prodDesc, String prodCategory, String prodAddInfo, String prodImage,
			int prodID, int adminID, int suppID, int prodDiscount, int prodQuantity, float prodPrice) {
		super();
		ProdName = prodName;
		ProdColour = prodColour;
		ProdDesc = prodDesc;
		ProdCategory = prodCategory;
		ProdAddInfo = prodAddInfo;
		ProdImage = prodImage;
		ProdID = prodID;
		AdminID = adminID;
		SuppID = suppID;
		ProdDiscount = prodDiscount;
		ProdQuantity = prodQuantity;
		ProdPrice = prodPrice;
	}
	public int getProdID() {
		return ProdID;
	}
	public int getProdQuantity(){
		return ProdQuantity;
	}
	public String getProdName() {
		return ProdName;
	}
	public String getProdColour() {
		return ProdColour;
	}
	public String getProdDesc() {
		return ProdDesc;
	}
	public String getProdCategory() {
		return ProdCategory;
	}
	public String getProdAddInfo() {
		return ProdAddInfo;
	}
	public int getSuppID() {
		return SuppID;
	}
	public int getAdminID() {
		return AdminID;
	}
	public int getProdDiscount() {
		return ProdDiscount;
	}
	public float getProdPrice() {
		return ProdPrice;
	}
	public void setProdID(int prodID) {
		ProdID = prodID;
	}
	public void setProdQuantity(int prodQuantity){
		ProdQuantity = prodQuantity;
	}
	public void setProdName(String prodName) {
		ProdName = prodName;
	}
	public void setProdColour(String prodColour) {
		ProdColour = prodColour;
	}
	public void setProdDesc(String prodDesc) {
		ProdDesc = prodDesc;
	}
	public void setProdCategory(String prodCategory) {
		ProdCategory = prodCategory;
	}
	public void setProdAddInfo(String prodAddInfo) {
		ProdAddInfo = prodAddInfo;
	}
	public void setSuppID(int suppID) {
		SuppID = suppID;
	}
	public void setAdminID(int adminID) {
		AdminID = adminID;
	}
	public void setProdDiscount(int prodDiscount) {
		ProdDiscount = prodDiscount;
	}
	public void setProdPrice(float prodPrice) {
		ProdPrice = prodPrice;
	}
	public String getProdImage() {
		return ProdImage;
	}
	public void setProdImage(String prodImage) {
		ProdImage = prodImage;
	}
	public float getDiscPrice() {
		float discPrice = 0;
		discPrice = ProdPrice * (100-ProdDiscount)/100;
		return discPrice;
	}
}
