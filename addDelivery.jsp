<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="addDelivery.css" rel="stylesheet" />
    <title>Document</title>
</head>

<body>
    <div class="v208_85">
            <div class="header-links">
                <span class="logo">Hômify</span>
                <a href="../oriplug/promos.html"> <span class="promos">Promos</span></a>
            </div>
            <a href="../oriplug/whoweare.html"><span class="who-we-are">Who we are</span></a>
            <a href="../oriplug/deliverystatus.html"><span class="my-order">My Order</span></a>
            <a href="../oriplug/basket.html">
                <div class="basket">
                    <span class="basket-text">Cart</span>
                </div>
            </a>
            </a>
            <div class="shop-dropdown">
                Shop
            </div>
            </div>
            <div class="v215_198">
                <div class="move-down">
                    <div class="v215_199">
                        <span class="v215_201">Delivery address</span>
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
             <form action="AddDeliveryController" method="post">
        <div class="v208_257">
            <span class="v208_258">Shipping method</span>
            <div class="v208_262"></div>
            <select name="DeliFee" class="v227_26">
                <option value="150" class="v227_27">Fast Delivery</option>
                <option value="100" class="v227_27">Normal Delivery</option>
            </select>

            </div>
            <span class="v227_33">Choose delivery method</span>
        </div>

        <a href="validateorder.jsp"><div class="v217_799">
            <span class="v217_800"><input type="submit" value="continue"></input></span>
        </div></a>
        </form>
<a href="../oriplug/billaddress.html">

</a>

    </div>
</body>

</html>