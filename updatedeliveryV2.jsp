<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="dao.DeliveryDAO,java.util.List,bean.Delivery,bean.Admin,dao.A1DAO" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <!DOCTYPE html>
            <html>

            <head>
                <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
                <link href="updatedeliveryV3.css" rel="stylesheet" />
                <title>Update Delivery</title>
            </head>

            <body>
                <% List<Delivery> deliveryList = DeliveryDAO.getAllDeliveries();
                    request.setAttribute("deliveryList", deliveryList);
                    request.getAttribute("d");
                    %>
                      <% List<Admin> adminList = A1DAO.getAllAdmins();
                    request.setAttribute("adminList", adminList);
                    request.getAttribute("a");
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

                            <a href="../oriplug/promos.html"> <span class="analytics">Analytics</span></a>
                            <a href="listproductV2.jsp">
    						<div class="shop-dropdown">
       						 Shop</a>
    						</div>		
                            <div class="test">
                                <a href="listpromoAdmin.jsp"> <span class="promos">Promos</span></a>
                            </div>
                        </div>


                        <div class="move-down">
                            <form action="UpdateDeliveryController" method="post">
                                <span hidden="hidden"><input type="text" name="DeliID" value="${d.getDeliID()}"
                                        required /></span>
                                <h1 class="delivery-name">Delivery ID: ${d.getDeliID()} </h1>
                                <div class="delivery-status">Delivery Status:</div>
                                <div class="admin-id">Admin ID: </div>
                                <div></div>
                                <select name="DeliStatus" id="DeliStatus" class="delivery-dropdown">
                                    <!--update status-->
                                    <option value="" disabled selected>Select status</option>
                                    <option value="Preparing Order">Preparing Order</option>
                                    <option value="Selecting Items">Selecting Items</option>
                                    <option value="Packing Items">Packing Items</option>
                                    <option value="On Its Way">On Its Way</option>
                                    <option value="Delivered">Delivered</option>
                                </select>

                                <select name="adminID" id="adminID" class="admin-dropdown" required>
                                    <!--admin id dropdown-->
                                    <option value="" disabled selected>Select status</option>
									<c:forEach var="admin" items="${adminList}">
                                        <option value="${admin.getAdminID()}">${admin.getAdminName()}</option>
                                    </c:forEach>
                                </select>


                                <div class="add-prod-button"><input class="add-prod" type="submit"
                                        value="Update"></input></div>

                                <div class="cancel-button">
                                    <a href="listdeliveryV2.jsp" class="cancel-prod">Cancel</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    </div>


            </body>

            </html>