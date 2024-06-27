package bean;

public class Invoice {
	private String CustName,CustAdd,CustPhone,CustEmail;
	private int InvoiceID;
	
	public Invoice() {}

	public Invoice(String custName, String custAdd, String custPhone, String custEmail, int invoiceID) {
		super();
		CustName = custName;
		CustAdd = custAdd;
		CustPhone = custPhone;
		CustEmail = custEmail;
		InvoiceID = invoiceID;
	}

	public String getCustName() {
		return CustName;
	}

	public void setCustName(String custName) {
		CustName = custName;
	}

	public String getCustAdd() {
		return CustAdd;
	}

	public void setCustAdd(String custAdd) {
		CustAdd = custAdd;
	}

	public String getCustPhone() {
		return CustPhone;
	}

	public void setCustPhone(String custPhone) {
		CustPhone = custPhone;
	}

	public String getCustEmail() {
		return CustEmail;
	}

	public void setCustEmail(String custEmail) {
		CustEmail = custEmail;
	}

	public int getInvoiceID() {
		return InvoiceID;
	}

	public void setInvoiceID(int invoiceID) {
		InvoiceID = invoiceID;
	}

	
}