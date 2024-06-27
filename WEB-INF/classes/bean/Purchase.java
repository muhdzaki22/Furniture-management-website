package bean;

import java.util.List;

public class Purchase {
	String ProdName;
	int ProdQuantity;
	/*double PurcTotal;*/
	
	public Purchase(String prodName, int prodQuantity) {
		super();
		ProdName = prodName;
		ProdQuantity = prodQuantity;
		/*PurcTotal = 0.0;*/
	}
	public Purchase() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	public String getProdName() {
		return ProdName;
	}
	public int getProdQuantity() {
		return ProdQuantity;
	}
	/*public double getPurcTotal() {
		return PurcTotal;
	}*/
	public void setProdName(String prodName) {
		ProdName = prodName;
	}
	public void setProdQuantity(int prodQuantity) {
		ProdQuantity = prodQuantity;
	}
	/*public void setPurcTotal(int purcTotal) {
		PurcTotal = purcTotal;
	}*/
	
	/*public double getMonthlyRev(List<Purchase> mthProds) {
		double rev = 0.0;
		for(int i = 0; i < mthProds.size(); i++)
			rev += mthProds.get(i).getPurcTotal();
		
		return rev;
	}*/
	
	public String getNameList(List<Purchase> sales) {
		String nameList = "";
		nameList.concat(sales.get(0).getProdName());
		for(int i = 1; i < sales.size(); i++)
			nameList.concat("," + sales.get(i).getProdName());
		return nameList;
	}
	
	public String getQuantityList(List<Purchase> sales) {
		String qtyList = "";
		qtyList.concat("" + sales.get(0).getProdQuantity());
		for(int i = 1; i < sales.size(); i++)
			qtyList.concat("," + sales.get(i).getProdQuantity());
		return qtyList;
	}
	
}