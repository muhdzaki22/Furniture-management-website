<%@ page import="dao.DeliveryDAO,java.util.List,bean.Delivery" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="listdeliveryV2.css" rel="stylesheet" />
    <title>Delivery Status</title>
</head>

<body>
<%
	List<Delivery> deliveryList = DeliveryDAO.getAllDeliveries();
	request.setAttribute("deliveryList", deliveryList);
%>
    <div class="container">
        <div class="title-header">

            <div class="line"></div>
            <div class="move-button-down">



            </div>
            <span class="title-info"></span>
            <span class="page-title">Delivery Status </span>
            <div class="name"></div>
        </div>
        <div class="website-header">
            <a href="adminHomepageLoad.jsp" class="logo">Homify</a>
            <a href="adminHomepageEdit.jsp"><span class="edit-website">Edit Website</span></a>
            <a href="listdeliveryV2.jsp"><span class="my-order">Deliveries</span></a>
            <div class="logout-button">
                <a href="START.html"><span class="logout">Log Out</span></a>
            </div>

            <a href=""> <span class="analytics">Analytics</span></a>
            <a href="listproductV2.jsp">
    		<div class="shop-dropdown">
        	Shop</a>
   		 	</div>
            <div class="test">
                <a href="listpromoAdmin.jsp"> <span class="promos">Promos</span></a>
            </div>
        </div>
        <div class="column-list">
            <a class="column-word">Delivery ID </a>
            <a class="column-status">Status</a>
        </div>


        <div class="move-down">
            <div class="content">
				<c:forEach var="d" items="${deliveryList}">
                <div class="red"><!--for loop above red -->
                    <div class="first-item">
                        <div class="delivery-id">${d.getDeliID()}
                        </div>
                        <div class="delivery-status">${d.getDeliStatus()}
                        </div>

                        <div class="add-prod-button">
                            <a href="UpdateDeliveryController?DeliID=${d.getDeliID()}" class="add-prod">Update</a>
                        </div>

                    </div>
                </div>
              </c:forEach>

                    </div>
                </div>

            </div>

</body>

</html>