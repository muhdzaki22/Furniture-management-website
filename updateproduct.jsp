<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.ProductDAO,java.util.List,bean.Product,bean.Supplier"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
</head>
<body>
<a href="ListProductController">List Product</a><br><br>
<%
	List<Supplier> supplierList = ProductDAO.getAllSuppliers();
	request.setAttribute("supplierList", supplierList);
	request.getAttribute("p");
%>
	<form action="UpdateProductController" method="post">
		Name: <br>
		<input type="text" name="ProdName" value="${p.getProdName()}"/><br>
		Category: <br>
		<input type="text" name="ProdCategory" value="${p.getProdCategory()}"/><br>
		Colour: <br>
		<input type="text" name="ProdColour" value="${p.getProdColour()}"/><br>
		Material: <br>
		<input type="text" name="ProdDesc" value="${p.getProdDesc()}"/><br>
		Price: <br>
		<input type="number" name="ProdPrice" value="${p.getProdPrice()}"/><br>
		Quantity: <br>
		<input type="number" name="ProdQuantity" value="${p.getProdQuantity()}"/><br>
		Additional Info: <br>
		<input type="text" name="ProdAddInfo" value="${p.getProdAddInfo()}"/><br>
		Image url: <br>
		<input type="url" name="ProdImage" value ="${p.getProdImage()}"/><br>
		<label for="SuppID">Supplier:</label>
    <select id="SuppID" name="SuppID" required>
        <option value="">Select Supplier</option>
        <c:forEach var="supplier" items="${supplierList}">
            <option value="${supplier.getSuppID()}">${supplier.getSuppName()}</option>
        </c:forEach>
    </select><br><br>
    <input type ="hidden" name="ProdID" value="${p.getProdID()}"/>
    
		<br />	
		<br />
		<input type="submit" value="Update">
		<input type="reset" value="Reset">
	</form>
</body>
</html>