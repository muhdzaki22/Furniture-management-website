<%@ page import="dao.ProductDAO,java.util.List,bean.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="listproductV2.css" rel="stylesheet" />
    <title>List Product</title>
</head>

<body>
<%
	List<Product> productList = ProductDAO.getAllProducts();
	request.setAttribute("productList", productList);
%>
    <div class="container">
        <div class="title-header">

            <div class="line"></div>
            <div class="move-button-down">

                <div class="add-prod-button">
                <a href="addproductV2.jsp" class="add-prod">Add Product</a>
                </div>

            </div>
            <span class="title-info"></span>
            <span class="page-title">Product Management</span>
            <div class="name"></div>
        </div>
        <div class="website-header">
            <a href="adminHomepageLoad.jsp" class="logo"></a>
            <a href="adminHomepageEdit.jsp"><span class="edit-website"></span></a>
            <a href="listdeliveryV2.jsp"><span class="my-order"></span></a>
            <div class="logout-button">
                <a href="START.html"><span class="logout"></span></a>
            </div>

        <a href=""> <span class="analytics"></span></a>
    <div class="shop-dropdown">
        
    </div>
    <div class="test">
    <a href="listpromoAdmin.jsp"> <span class="promos">Promos</span></a>
    </div>
            </div>



	<div class="move-down">
<div class="content">
	<c:forEach var="p" items="${productList}">
	    <div class="red"><!--for loop above red -->
	        <div class="first-item">
	            <span class="item1-name">${p.getProdName()}</span>
	            <span class="item1-price">RM${p.getDiscPrice()}</span>
	            <span class="material1-origin">${p.getProdDesc()}</span>
	            <div class="update-button">
	                <a href="UpdateProductController?ProdID=${p.getProdID()}"> <span class="update-word">Update Product</span></a>
		            <div class="delete-button">
		                <a href="DeleteProductController?ProdID=${p.getProdID()}"> <span class="delete-word">Delete Product</span><</a>
		            </div>
	            </div>
	            <div class="first-pic"><img src="${p.getProdImage() }" style="object-fit:contain;width:400px;height:300px;"></div>
	        </div>
		</div>
	</c:forEach>
</div>
</div>
</div>


</body>

</html>