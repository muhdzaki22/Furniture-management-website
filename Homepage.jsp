<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.TextManager" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<link href="Homepage.css" rel="stylesheet" />
<title>Document</title>
</head>
<body>
<% 
	TextManager oldText = new TextManager();
	request.setAttribute("oldText", oldText);
%>
<div class="homepage-container">
<span class="header-text">${oldText.getT1()}</span>
<div class="bottom-part">
<a href="listproductCust.jsp"><div class="browse-shop">
<span class="browse-shop-text">Learn more</span>
</a>
<div class="name"></div>
</div>
<span class="tagline">${oldText.getT2()}</span>
<div class="empty-div"></div>
<span class="subheader">${oldText.getT3()}</span>
<div class="header-links">
<a href="Homepage.jsp"><span class="logo">${oldText.getT0()}</span></a>
<a href="..............."><span class="who-we-are">Who we are</span></a>
<a href="..............."><span class="my-order">My Order</span></a>
<div class="basket">
<span class="basket-text">Cart</span>
</div>
<a href="listproductCust.jsp"><div class="shop-dropdown">
Shop
</div></a>
</div>
<a href="listpromoCust.jsp"> <span class="promos">Promos</span></a>
</div>
<span class="description">${oldText.getT4()}</span>
<span class="product-name">HEMNES</span>
<div class="product-images"></div>
<div class="product-details"></div>
<div class="product-pricing"></div>

</body>
</html>
