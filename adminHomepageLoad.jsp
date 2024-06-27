<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.TextManager"  %>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<link href="adminhomepage.css" rel="stylesheet" />
<style>
div.btn_textedit {
	scale:0.2;
	width:30px;
	height:30px;
}
</style>
<title>Homepage</title>
</head>

<body>
<% 
	TextManager oldText = new TextManager();
	request.setAttribute("oldText", oldText);
%>
	
<div class="homepage-container">
<span class="header-text">${oldText.getT1()}</span><div class="btn_textedit"><a href="adminHomepageEdit.jsp"><img src="https://cdn-icons-png.flaticon.com/512/1159/1159633.png"/></a></div>
<div class="bottom-part">
<div class="browse-shop">
    <a href="listproductV2.jsp"><span class="browse-shop-text">Browse our shop</span></a>
<div class="name"></div>
</div>
<span class="tagline">${oldText.getT2()}</span><div class="btn_textedit"><a href="adminHomepageEdit.jsp"><img src="https://cdn-icons-png.flaticon.com/512/1159/1159633.png"/></a></div>
<div class="empty-div"></div>
<span class="subheader">${oldText.getT3()}</span><div class="btn_textedit"><a href="adminHomepageEditing.jsp"><img src="https://cdn-icons-png.flaticon.com/512/1159/1159633.png"/></a></div>

<div class="header-links">
<a href="adminHomepageLoad.jsp"><span class="logo">${oldText.getT0()}</span></a>
<a href="..............."><span class="who-we-are">Who we are</span></a>
<a href="listdeliveryV2.jsp"><span class="my-order">Deliveries</span></a>
<div class="basket">
    <a href="START.html"><span class="basket-text">Log Out</span></a>
</div>
<a href="listproductV2.jsp">
<div class="shop-dropdown">
Shop
</div></a>
<a href="listpromoAdmin.jsp"> <span class="promos">Promos</span></a>
</div>

<span class="description">${oldText.getT4()}</span><div class="btn_textedit"><a href="adminHomepageEdit.jsp"><img src="https://cdn-icons-png.flaticon.com/512/1159/1159633.png"/></a></div>
</div>
</div>
</body>
</html>