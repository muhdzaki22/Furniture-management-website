<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.TextManager" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<link href="deliveryinsert.css" rel="stylesheet" />
<title>Document</title>
</head>
<body>
<% 
	TextManager oldText = new TextManager();
	request.setAttribute("oldText", oldText);
%>

<div class="header-links">
<a href="Homepage.jsp"><span class="logo">${oldText.getT0()}</span></a>
<a href="whoweare.jsp"><span class="who-we-are">Who we are</span></a>
<a href="trackOrderCust.jsp"><span class="my-order">My Order</span></a>
<div class="basket">
<span class="basket-text">Cart</span>
</div>
<a href="listproductCust.jsp"><div class="shop-dropdown">
Shop
</div></a>
</div>
<a href="listpromoCust.jsp"><span class="promos">Promos</span></a>
</div>
<div class="v228_31">
	<span class="v228_39">Delivery Status</span>
</div>
<form action="GetDeliveryStatusController" method="get">
    <label for="DeliID"><span class="v228_118">Enter your Delivery ID : </span></label><input type="text" name="DeliID"><br />
	<input type="submit" value="Search for delivery">
    <div class="pushdown">
        <div class="name"></div>
        <div class="name"></div>
        <div class="name"></div>
        <div class="name"></div>
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
        <div class="line4"></div>
        <span class="v228_113">Preparing Order</span>
        <span class="v228_114">Selecting Items</span>
        <span class="v228_115">Packing Items</span>
        <span class="v228_116">On Its Way</span>
        <span class="v228_117">Delivered</span>
        <div class="v228_101">

        </div>
        <div class="v228_102">

        </div>
        <div class="v228_104">

        </div>
        <div class="v228_103">

        </div>
        <div class="v228_105">

        </div>
    </div>
    </div>
</form>
</body>
</html>
