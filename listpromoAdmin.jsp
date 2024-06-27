<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="dao.ProductDAO,java.util.List,bean.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="listpromoAdmin.css" rel="stylesheet" />
    <title>admin promo</title>
</head>

<body>
<%
	List<Product> discountList = ProductDAO.getDiscountProducts();
	request.setAttribute("discountList", discountList);
%>
    <div class="container">
        <div class="title-header">

            <div class="line"></div>
            <div class="move-button-down">



            </div>

            <span class="page-title">Promos </span>
            <div class="name"></div>
        </div>
        <div class="website-header">
            <a href="adminHomepageLoad.jsp" class="logo">Hômify</a>
            <a href="adminHomepageEdit.jsp"><span class="edit-website">Edit Website</span></a>
            <a href="listdeliveryV2.jsp"><span class="my-order">Deliveries</span></a>
            <div class="logout-button">
                <a href="START.html"><span class="logout">Log Out</span></a>
            </div>
        </div>
        <a href="../oriplug/promos.html"> <span class="analytics">Analytics</span></a>
    </div>
    <a href="listproductV2.jsp">
    <div class="shop-dropdown">
        Shop</a>
    </div>
    <a href="#"> <span class="promos">Promos</span></a>
    </div>



    <div class="move-down">
        <div class="content">
<c:forEach var="dc" items="${discountList}">
            <div class="red"><!--for loop above red -->
                <div class="first-item">
                    <div class="item-image">
                        <img
                            src="${dc.getProdImage() }">
                    </div>
                    <div class="move-words-left">
                        <div class="item-name">${dc.getProdName()}</div>
                        <div class="item-price"><s>RM${dc.getProdPrice()}</s> RM${dc.getDiscPrice()}</div>
                        <div class="item-desc">${dc.getProdColour()}</div>
                        <div class="item-origin">${dc.getProdDesc()}</div>
                    </div>
                </div>
            </div>
</c:forEach>
        </div>
    </div>

    </div>

</body>

</html>