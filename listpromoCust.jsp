<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="dao.ProductDAO,java.util.List,bean.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
        <!DOCTYPE html>
        <html>

        <head>
            <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
            <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
            <link href="listpromoCust.css" rel="stylesheet" />
            <title>customer promo</title>
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
                        <span class="title-info"></span>
                        <span class="page-title">Promos </span>
                        <div class="name"></div>
                    </div>
                    <div class="website-header">
                        <a href="Homepage.jsp" class="logo">Homify</a>
                        <a href=""><span class="who-we-are">Who We Are</span></a>
                        <a href=""><span class="my-order">My Order</span></a>
                        <div class="basket-button">
                            <a href=""><span class="basket">Cart</span></a>
                        </div>
						<a href="listproductCust.jsp">
                        <div class="shop-dropdown">
                         Shop</a>
                        </div>
                        <div class="test">
                            <a href=""> <span class="promos">Promos</span></a>
                        </div>
                    </div>



                    <div class="move-down">
                        <div class="content">
							<c:forEach var="dc" items="${discountList}">
                            <div class="red"><!--for loop above red -->
                                <div class="first-item">
                                    <div class="item-image">
                                        <img
                                            src="${dc.getProdImage() }" >
                                    </div>
                                    <div class="move-words-left">
                                        <div class="item-name">${dc.getProdName()}</div>
                                        <div class="item-price"><s>RM${dc.getProdPrice()}</s>  RM${dc.getDiscPrice()}</div>
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