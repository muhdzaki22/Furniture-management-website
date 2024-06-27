<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="addinvoice.css" rel="stylesheet" />
    <title>billaddress</title>
</head>

<body>
    <div class="v215_84">
        <div class="v215_87">
            <div class="v215_198">
                <div class="move-down">
                <div class="v215_199">
                    <span class="v215_201">Bill address</span>
                </div>
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
            <span class="v215_212">Enter New Address</span>
            <span class="v215_232">Full Name*: </span>
            <span class="v215_234">Phone Number*:</span>
            <span class="v215_235">Email*: </span>
            <span class="v215_236">Address 1*: </span>

            <div class="header-links">
                <span class="logo">Hômify</span>
            <a href="../oriplug/promos.html"> <span class="promos">Promos</span></a>
            </div>
                <a href="../oriplug/whoweare.html"><span class="who-we-are">Who we are</span></a>
                <a href="../oriplug/deliverystatus.html"><span class="my-order">My Order</span></a>
                <a href="../oriplug/basket.html"><div class="basket">
                 <span class="basket-text">Cart</span>
                </div>
                </a>
                </a>
                <div class="shop-dropdown">
                    Shop

                </div>
            </div>
<form action="AddInvoiceController" method="post">
            <a href="addDelivery.jsp"><div class="v215_258">
                <span class="v215_259"><input type="submit" value="Continue"></input></span>
            </div></a>
            
    <div class="v215_266">
        <input type="text" name="CustName" required/>
    </div>
    <div class="v215_267">
        <input type="text" name="CustPhone" required/>
    </div>
    <div class="v215_268">
        <input type="email" name = "CustEmail" required/>
    </div>
    <div class="v215_269">
        <input type="text" name = "CustAdd" required/>
    </div>

</form>

            <span class="v217_189">By entering personal details, you have agreed to our Privacy Policy.</span>
        </div>

    </div>
</body>

</html>