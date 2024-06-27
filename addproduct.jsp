<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.ProductDAO,java.util.List,bean.Supplier"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
</head>
<body>
<a href="ListProductController">List Product</a><br><br>
<%
    List<Supplier> supplierList = ProductDAO.getAllSuppliers();
    request.setAttribute("supplierList", supplierList);
%>
	<form action="AddProductController" method="post" enctype="multipart/form-data">
		Name: <br>
		<input type="text" name="ProdName"/><br>
		Category: <br>
		<input type="text" name="ProdCategory"/><br>
		Colour: <br>
		<input type="text" name="ProdColour"/><br>
		Material: <br>
		<input type="text" name="ProdDesc" /><br>
		Price: <br>
		<input type="number" name="ProdPrice"/><br>
		Quantity: <br>
		<input type="number" name="ProdQuantity"/><br>
		Additional Info: <br>
		<input type="text" name="ProdAddInfo"/><br>
		
		<label for="SuppID">Supplier:</label>
    <select id="SuppID" name="SuppID" required>
        <option value="">Select Supplier</option>
        <c:forEach var="supplier" items="${supplierList}">
            <option value="${supplier.getSuppID()}">${supplier.getSuppName()}</option>
        </c:forEach>
    </select>
		<br />	
		<br />
		Image: <br>
    	<input type = "file" name="ProdImage">
		<br />	
		<br />
		<input type="submit" value="Submit">
		<input type="reset" value="Reset">
		<input type="submit" value="Submit">
		<input type="reset" value="Reset">
	</form>
</body>
</html>