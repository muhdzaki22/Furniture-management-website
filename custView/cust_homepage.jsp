<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="cust_textManager.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
<!-- Font CSS -->
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
<!-- Analytics Page CSS -->
<link href="../custCSS/cust_homepage.css" rel="stylesheet" />
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>${oldText.getT0()}</title>
</head>

<body>
<%@ include file="cust_header.jsp" %>
<div class="row homepage-container" style="top:200px;">
<span class="header-text">${oldText.getT1()}</span>
<div class="bottom-part">
<a href="listproductCust.jsp"><div class="browse-shop">
<span class="browse-shop-text">Learn more</span>
</a>
<div class="name"></div>
</div>
<span class="tagline">${oldText.getT2()}</span>
<div class="empty-div"></div>
<span class="subheader">${oldText.getT3()}</span>
<span class="description">These cushion covers add personality wherever you use them, and they also tell a
unique
story. It's the latest unit produced by Rangsutra, a community-owned social business that creates jobs for
skilled
artisan women in India.</span>
<span class="product-name">HEMNES</span>
<div class="product-images"></div>
<div class="product-details"></div>
<div class="product-pricing"></div>

</body>
</html>