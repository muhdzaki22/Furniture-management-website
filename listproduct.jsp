<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Products</title>
<link rel="stylesheet" type="text/css" href="">
</head>
<body>
<a href="addproduct.jsp">Add Product</a><br><br>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Price</th>
			<th colspan="3">Action</th>
		</tr>
		<c:forEach items="${products}" var="p" >
		<tr>
        	<td><c:out value="${p.getProdID()}"/></td>
            <td><c:out value="${p.getProdName()}"/></td> 
            <td><c:out value="${p.getProdPrice()}"/></td>        
            <td><a class="btn btn-primary" href="ViewProductController?ProdID=<c:out value="${p.getProdID()}"/>">View</a></td>
            <td><a class="btn btn-primary" href="UpdateProductController?ProdID=<c:out value="${p.getProdID()}"/>">Update</a></td>
            <td><button class="btn btn-danger" id="<c:out value="${p.getProdID()}"/>" onclick="confirmation('${p.prodID}')">Delete</button></td>    
        </tr>
        </c:forEach>
	</table>
	<script>
	function confirmation(ProdID){					  		 
		  console.log(ProdID);
		  var r = confirm("Are you sure you want to delete?");
		  if (r == true) {				 		  
			  location.href = 'DeleteProductController?ProdID=' + ProdID;
			  alert("Product successfully deleted");			
		  } else {				  
		      return false;	
		  }
	}
	</script>
</body>
</html>