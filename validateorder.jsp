<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.CartDAO,java.util.List,bean.Product,bean.Invoice" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="validateorder.css" rel="stylesheet" />
    <title>Document</title>
</head>

<body>
<%  
	CartDAO.createCart(request);
	List<Product> productList = CartDAO.viewCart(request);
	request.setAttribute("productList", productList);
%> 
    <div class="v222_105">
        <div class="v222_106">
            <div class="v215_198">
                <div class="move-down-title">
                    <div class="v215_199">
                        <span class="v215_201">Validate your Order</span>
                    </div>
                    <div class="move-right">
                        <div class="name"></div>
                        <div class="v215_219"></div>
                        <div class="v215_222"></div>
                        <div class="v215_223"></div>
                        <div class="v215_224"></div>
                        <div class="v215_225"></div>
                        <span class="v215_227">Address</span>
                        <span class="v215_228">Delivery</span>
                        <span class="v215_229">Valid</span>
                        <span class="v215_230">Payment</span>
                        <span class="v215_231">Complete</span>
                        <div class="name"></div>
                    </div>
                </div>
            </div>
            <div class="header-links">
                <span class="logo">Hômify</span>
                <a href="#"><span class="promos">Promos</span></a>
            </div>
            <a href="#"><span class="who-we-are">Who we are</span></a>
            <a href="#"><span class="my-order">My Order</span></a>
            <a href="#">
                <div class="basket">
                    <span class="basket-text">Cart</span>
                </div>
            </a>
            <div class="shop-dropdown">
                Shop
            </div>
        </div>
    </div>
    <span class="v222_159">
        Name: ZAKI OTHMAN
        <br>
        Phone Number: 013 393 5928
        <br>
        Email: muhammadzaki408@gmail.com
        <br>
        Address: No 47 Jln Abdul Rahman 
                Ampang, Selangor 64323
        <div></div>
        <div class="line1"></div>
        <div class="line2"></div>

    </span>
    <span class="v222_152">Product</span>
    <span class="v222_153">Price</span>
    <span class="v222_154">Qty.</span>
    <span class="v222_156">Total Item</span>

<div class="move-down">
    <div class="content">
    <c:forEach var="p" items="${productList}">
  <div class="red">
<div class="first-item">
    <div class="v217_622"><img src="${p.getProdImage() }" style="object-fit:contain;width:400px;height:300px;"></div>
    <span class="v222_160">${p.getProdName()}</span>
    <span class="v222_189">${p.getProdPrice()}</span>
    <span class="v237_113">${p.getProdCategory()}</span>
    <span class="v222_188">${p.getProdPrice()}</span>
    <span class="v222_190">1</span>
    <span class="v222_191">${p.getProdPrice()}</span>

</div>
  </div>
</c:forEach>
</div>
</div>




    
    <span class="v222_193">Total Item: $499.00 
        <br> Delivery fee: $100.00 
        
        <br> Total: $599.00</span>



    <a href="payment.jsp">
        <div class="v222_138"><span class="v222_139">Continue</span></div>
    </a>

    <span></span>
</body>

</html>