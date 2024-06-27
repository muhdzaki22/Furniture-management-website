<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="dao.ProductDAO,java.util.List,bean.Supplier,dao.A1DAO,bean.Admin" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="addproductV3.css" rel="stylesheet" />
    <title>Add Product V2</title>
</head>

<body>
<% List<Supplier> supplierList = ProductDAO.getAllSuppliers();
    request.setAttribute("supplierList", supplierList);

    List<Admin> adminList = A1DAO.getAllAdmins();
        request.setAttribute("adminList", adminList);
        %>
    <div class="v294_150">
        <div class="website-header">
            <a href="adminHomepageLoad.jsp" class="logo">Homify</a>
            <a href="adminHomepageEdit.jsp"><span class="edit-website">Edit Website</span></a>
            <a href="listdeliveryV2.jsp"><span class="my-order">Deliveries</span></a>
            <a href="START.html">
                <div class="logout-button">
                    <span class="logout">Log Out</span>
                </div>
            </a>
        </div>
        <a href=""> <span class="analytics">Analytics</span></a>
    </div>
    <a href="listproductV2.jsp">
    <div class="shop-dropdown">
        Shop</a>
    
    </div>
    <a href="listpromoAdmin.jsp"> <span class="promos">Promos</span></a>
    </div>
    <div class="v294_203">
        <div class="line"></div>
        <div class="v294_204">
            <span class="v294_205">Add Product</span>
        </div>
        <div class="name"></div>
        <span class="v294_207"></span>
    </div>
    <a href="listproductV2.jsp">
        <div class="v294_161">
            <span class="v294_162">Cancel</span>
        </div>
    </a>
    <form action="AddProductController" method="post">
        <div class="v294_163">
            <span class="v294_164">Category: </span>
            <div class="v294_183" style="top: 30px">
                <input type="text" name="ProdCategory" required /> <!--category-->
            </div>

            <span class="v294_176">Product Name*:</span>
            <span class="v294_177">Price*: </span>
            <div class="move-down">
                <span class="v294_131">Quantity: </span>
                <span class="v294_178">Colour*: </span>
                <span class="v294_179">Display Image: </span>
                <span class="v294_2209">Admin ID: </span>
                <span class="discount-label">Discount: </span>
                <div class="v294_2210"></div>

                <span class="v294_180">Description: </span>
                <span class="v294_181">Additional Information: </span>

                <label for="SuppID" class="v294_1345">Supplier ID: </label>
                <select class="v294_151" id="SuppID" name="SuppID" required>
                    <option value="">Select Supplier</option>
                    <c:forEach var="supplier" items="${supplierList}">
                        <option value="${supplier.getSuppID()}">${supplier.getSuppName()}</option>
                    </c:forEach>
                </select>

                <select class="v294_2211" id="adminID" name="adminID" required>
                    <option value="">Select Admin</option>
                    <c:forEach var="a" items="${adminList}">
                        <option value="${a.getAdminID()}">${a.getAdminName()}</option>
                    </c:forEach>

                </select>
            </div>

            <div class="v294_183">
                <input type="text" name="ProdName" required /><!--product name-->
            </div>
            <div class="v294_184">
                <input type="text" name="ProdPrice" required /> <!--price-->
            </div>
            <div class="v294_121">
                <input type="text" name="ProdQuantity" required /> <!--quantity-->
            </div>
            <div class="v294_185">
                <input type="text" name="ProdDesc" required /> <!--description-->
            </div>
            <div class="v294_186">
                <input type="text" name="ProdAddInfo" /> <!--add info-->
            </div>

            <div class="v294_191"><input class="v294_192" type="submit" value="Publish"></input></div>



            <div class="move2-down">
                <div class="v294_187">
                    <input type="text" name="ProdColour" required /> <!--colour-->
                </div>
                <div class="v294_229">
                    <input type="url" name="ProdImage" required /> <!--image-->
                </div>
                <div class="discount-input">
                    <input type="text" name="ProdDiscount" required /> <!--discount-->
                </div>


                <div class="v294_199"></div>
                <div class="v294_200"></div>
            </div>
        </div>
    </form>
</body>

</html>