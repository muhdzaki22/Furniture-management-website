<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page import="dao.ProductDAO,java.util.List,bean.Product" %>

<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="listproductCust.css" rel="stylesheet" />
    <title>Document</title>
</head>

<body>
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
        <div class="header-links">
            <a href="Homepage.jsp"><span class="logo">Homify</span></a>
            <a href="listpromoCust.jsp"> <span class="promos">Promos</span></a>
        </div>
        <a href="../oriplug/whoweare.html"><span class="who-we-are">Who we are</span></a>
        <a href="../oriplug/deliverystatus.html"><span class="my-order">My Order</span></a>
        <a href="shoppingcart.jsp">
        <div class="basket">
            <span class="basket-text">Cart</span>
        </div>
        </a>
        <a href="custVlistproductCust.jsp">
        <div class="shop-dropdown">
        Shop</a>
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