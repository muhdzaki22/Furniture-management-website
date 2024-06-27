<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.TextManager" %>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="./css/whoweare.css" rel="stylesheet" />
    <title>Document</title>
</head>

<body>
<% 
	TextManager oldText = new TextManager();
	request.setAttribute("oldText", oldText);
%>
    <div class="v237_441">
        <div class="v237_442">
            <div class="v237_443"></div>
            <div class="header-links">
                <a href="../oriplug/homepagePI.html"><span class="logo">Hômify</span></a>
                <a href="../oriplug/promos.html"> <span class="promos">Promos</span></a>
            </div>
            <a href="../oriplug/whoweare.html"><span class="who-we-are">Who we are</span></a>
            <a href="../oriplug/deliverystatus.html"><span class="my-order">My Order</span></a>
            <a href="../oriplug/basket.html">
                <div class="basket">
                    <span class="basket-text">Basket (3)</span>
                </div>
            </a>
            </a>
            <div class="shop-dropdown">
                Shop
                <div class="dropdown-content">
                    <div class="chair-dropdown">
                        <a href="#">Chair</a>
                        <div class="chair-content">
                            <a href="#">Cafe's Chair</a>
                            <a href="#">Children's Chair</a>
                            <a href="#">Dining Chair</a>
                            <a href="#">Gaming Chair</a>
                            <a href="#">Office Chair</a>
                        </div>
                    </div>
                    <div class="sofa-dropdown">
                        <a href="#">Sofa</a>
                        <div class="sofa-content">
                            <a href="../oriplug/fabricsofa.html">Fabric Sofa</a>
                            <a href="#">Leather Sofa</a>
                            <a href="#">Modular Sofa</a>
                            <a href="#">Sofa Bed</a>
                        </div>
                    </div>
                    <div class="wardrobe-dropdown">
                        <a href="#">Wardrobe</a>
                        <div class="wardrobe-content">
                            <a href="#"> build-in wardrobe</a>
                            <a href="#"> children's wardrobe</a>
                            <a href="#">Mirrored Wardrobe</a>
                            <a href="#">Open Wardrobe</a>
                            <a href="#">Sliding Wardrobe</a>
                        </div>
                    </div>
                    <div class="cabinet-dropdown">
                        <a href="#">Cabinet</a>
                        <div class="cabinet-content">
                            <a href="../oriplug/shop ctgry/shopcategory.html">TV Cabinet</a>
                            <a href="#">Kitchen Cabinet</a>
                        </div>
                    </div>
                    <div class="table-dropdown">
                        <a href="#">Table</a>
                        <div class="table-content">
                            <a href="#">Night Stand</a>
                            <a href="#">Computer Table</a>
                            <a href="#">Coffe Table</a>
                            <a href="#">Dining Table</a>
                            <a href="#">Dressing table</a>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <div class="rescale">
            <div class="v237_453">
                <div class="v237_454">
                    <span class="v237_455">Who We Are</span>
                </div>
                <div class="name"></div>
            </div>
            <div class="v237_457"></div>
            <span class="v237_458">${oldText.getT5()}</span><div class="btn_textedit"><a href="adminHomepageEdit.jsp"><img src="https://cdn-icons-png.flaticon.com/512/1159/1159633.png"/></a></div>
        </div>
        </div>
    </div>
</body>

</html>