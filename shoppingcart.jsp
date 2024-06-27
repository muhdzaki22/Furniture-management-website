<%@ page import="dao.CartDAO,java.util.List,bean.Purchase,bean.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="shoppingcartV4.css" rel="stylesheet" />
    <title>Shopping Cart</title>
</head>

<body>
<%  
	CartDAO.createCart(request);
	List<Product> productList = CartDAO.viewCart(request);
	request.setAttribute("productList", productList);
%> 
    <div class="container">
        <div class="title-header">

            <div class="line"></div>
            <div class="move-button-down">



            </div>

            <span class="page-title">Shopping Cart </span>
            <div class="name"></div>
        </div>
        <div class="website-header">
            <a href="adminhomepage.jsp" class="logo">Homify</a>
            <a href=""><span class="edit-website">Who We Are</span></a>
            <a href="#"><span class="my-order">My Order</span></a>
            <div class="basket-button">
                <a href=""><span class="basket">Cart</span></a>
            </div>


            <div class="shop-dropdown">
                Shop
            </div>
            <div class="test">
                <a href=""> <span class="promos">Promos</span></a>
            </div>
        </div>
        <div class="column-list">
            
            <a href="addinvoice.jsp">
            <span class="v294_192">Continue to payment</span></a>
        </div>


        <div class="move-down">
            <div class="content">
            <c:forEach var="p" items="${productList}">
                <div class="red"><!--for loop above red -->
                    <div class="first-item">
                        <div class="item-image">           
                              <img src="${p.getProdImage()}">
                        </div>
                        <div class="move-words-left">
                        <div class="item-name">${p.getProdName()}</div>
                        <div class="item-price">${p.getProdDesc()}</div>
                        <div class="item-total">${p.getProdColour()}</div>
                        <div class="icon">
                        <a href="DeleteFromCartController?ProdID=${p.getProdID()}"><img src="https://cdn-icons-png.flaticon.com/512/342/342033.png" class="trash-icon" style="height:30px; width:30px;"></img></a></div>
                        <div class="total-item">${p.getDiscPrice()}</div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>

    </div>

</body>

</html>