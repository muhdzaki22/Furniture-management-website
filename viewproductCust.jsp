<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page import="dao.ProductDAO,java.util.List,bean.Product" %>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="viewproductCust.css" rel="stylesheet" />
    <title>Document</title>
</head>

<body>
<%	
	Product p = (Product)request.getAttribute("p");
	int ProdID = p.getProdID();
	request.setAttribute("ProdID", ProdID);
	System.out.println(ProdID);
%>
<form action="AddToCartController" method="post">
    <span hidden="hidden"><input type="text" name="ProdID" value="${p.getProdID()}" required /></span>
    <div class="v208_182">
            <div class="header-links">
                <a href="Homepage.jsp"><span class="logo">Homify</span></a>
                <a href="listpromoCust.jsp"> <span class="promos">Promos</span></a>
            </div>
            <a href=""><span class="who-we-are">Who we are</span></a>
            <a href=""><span class="my-order">My Order</span></a>
            <a href="shoppingcart.jsp">
                <div class="basket">
                    <span class="basket-text">Cart</span>
                </div>
            </a>
            <a href="listproductCust.jsp">
    				<div class="shop-dropdown">
       				 Shop</a>
            </div>
            </div>
        <div class="v217_272"><img src="${p.getProdImage() }" style="object-fit:contain;width:600px;height:500px;"></div>
        <div class="v217_277">

            <div class="v217_282">
                <span class="v217_283">List view</span>
            </div>

            <span class="v217_285">${p.getProdName()}</span>
            <div class="name"></div>
        </div>
        <div class="v217_302">
            <div class="move-down">
            <span class="v217_287">${p.getProdName()}</span>
            <span class="description">${p.getProdColour()}</span>
            <div class="price-container">
            <span class="price">RM${p.getDiscPrice()}</span>
            </div>
            <span class="v217_291">${p.getProdDesc()}</span>
            <span class="v217_292">Compact</span>
            <span class="v217_293">${p.getProdAddInfo()}</span>
            <div class="v217_298"></div>
            </div>
        </div>
        <div class="v217_301">
            <div class="v217_299"></div>
            <input type="submit" class="v217_300" value="ADD TO CART">
        </div>
    </div>
    </form>
</body>

</html>