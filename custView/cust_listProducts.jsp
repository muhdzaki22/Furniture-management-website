<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page import="dao.ProductDAO,java.util.List,bean.Product" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
<!-- Font CSS -->
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
<!-- Analytics Page CSS -->
<link href="../custCSS/cust_listProducts.css" rel="stylesheet" />
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Shop</title>
</head>

<body>
    <%@ include file="cust_header.jsp" %>
<%
	List<Product> productList = ProductDAO.getAllProducts();
	request.setAttribute("productList", productList);
%>
    <div class="v4368_321189">
        <div class="v4368_321190">
            <div class="line"></div>
 
            <span class="v4368_321197"></span>
            <span class="v4368_321198">All Products</span>
            <div class="name"></div>
        </div>


        <div class="move-down">
            <div class="content">
            <c:forEach var="p" items="${productList}">
                <div class="red"><!--for loop above red -->
                <a href="ViewProductController?ProdID=${p.getProdID()}">
                    <div class="first-item">
                        <span class="item1-name">${p.getProdName()}</span>
                        <span class="item1-price">RM${p.getDiscPrice()}</span>
                        <span class="material1-origin">${p.getProdDesc()}</span>
                        <div class="first-pic"><img src="${p.getProdImage()}" style="object-fit:contain;width:400px;height:300px;"></div>
                    </div></a>
                </div>
                </c:forEach>
            </div>
        </div>
</body>

</html>