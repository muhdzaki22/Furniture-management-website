<!DOCTYPE html>
<html>
<head>
<style>
a:link {
    text-decoration:none;
}
span.head-logo {
  color: rgba(66, 107, 31, 1);
  font-family: Newsreader;
  font-weight: Medium;
  font-size: 50px;
  opacity: 1;
  position:relative;
  left:10px;
  text-align: left;
}
span.header-reds {
  color: rgba(0, 0, 0, 1);
  font-family: Inter;
  font-weight: Regular;
  font-size: 16px;
  float:right;
  opacity: 1;
  position:relative;
  top:25px;
  left:50px;
  text-align: center;
}
</style>
</head>

<body>
    <div class="cust-header col-100% rounded-bottom border-top-0" style="height:60px;">
        <div class="card">
            <div class="card-body row">
                <div class="cust-logo col-md-6">
                    <a href="../adminView/admin_homepage.jsp"><span class="head-logo">${oldText.getT0()}</span></a>
                </div>
                <div class="cust-shop col-md-1 col-md-offset-2">
                    <a href="../adminView/admin_analyticsLanding.jsp"><span class="header-reds">Analytics</span></a>
                </div>
                <div class="cust-shop col-md-1">
                    <a href="../adminView/admin_listProducts.jsp"><span class="header-reds">Shop</span></a>
                </div>
                <div class="cust-promos col-md-1">
                    <a href="../adminView/admin_listPromos.jsp"><span class="header-reds">Promos</span></a>
                </div>
                <div class="cust-who col-md-1">
                    <a href="../adminView/admin_whoweare.jsp"><span class="header-reds">Who We Are</span></a>
                </div>
                <div class="cust-order col-md-1">
                    <a href="../adminView/admin_trackOrder.jsp"><span class="header-reds">Deliveries</span></a>
                </div>
                <div class="cust-cart col-md-1">
                    <a href="START.html"><span class="header-reds">Log Out</span></a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>