<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.PurchaseDAO,java.util.List,bean.Purchase"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
<!-- Font CSS -->
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
<!-- Analytics Page CSS -->
<link href="Sales.css" rel="stylesheet" />
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
<title>Analytics - Stock</title>
<!-- Chart.js Library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
</head>

<body>
<%
    List<Purchase> prodStock = PurchaseDAO.getAllStock();
    Purchase pur = new Purchase();
    String nameList = pur.getNameList(prodStock);
    request.setAttribute("nameList", nameList);
    String qtyList = pur.getQuantityList(prodStock);
    request.setAttribute("qtyList", qtyList);
%>
<span hidden="hidden" id="nameLoader">${nameList}</span>
<span hidden="hidden" id="qtyLoader">${qtyList}</span>
<div class="container">
          <div class="website-header">
            <a href="../oriplug/adminhomepagePI.html" class="logo">HÃ´mify</a>
            <a href="../oriplug/whoweare.html"><span class="edit-website">Edit Website</span></a>
            <a href="#"><span class="my-order">My Order</span></a>
            <div class="logout-button">
                <a href="../oriplug/2optionlogin.html"><span class="logout">Log Out</span></a>
            </div>
        </div>
        <a href="../oriplug/promos.html"> <span class="analytics">Analytics</span></a>
    </div>
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
    <a href="../oriplug/promos.html"> <span class="promos">Promos</span></a>
    </div>

        <div class="title-header">

            <div class="line"></div>
            <div class="move-button-down">

            </div>

            <span class="page-title">Product Sales</span>
            <div class="name"></div>
        </div>
        <div class="analytic-container">
  <table width="200px" border="1" class="analyticsNav">
    <tr>
      <td>SALES</td>
    </tr>
    <tr>
      <td>STOCK</td>
    </tr>
    <tr>
      <td>REVENUE</td>
    </tr>
  </table>
  <div class="chartbox">
    <div class="col-15 my-5">
        <div class="card">
            <div class="card-body">
                <div>
                    <canvas id="salesChart"></canvas>
                </div>
            </div>
        </div>
    </div>
  </div>

    <!-- Bootstrap script -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Chart.js script -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        var nameList = document.getElementById("nameLoader").textContent;
        var xValues = nameList.split(',');

        var qtyList = document.getElementById("qtyLoader").textContent;
        var yValues = qtyList.split(',').map(Number);

        function getRandomColour() {
        	const randomcolour = Math.floor(Math.random()*16777215).toString(16);
			return ("#" + randomcolour);
        }
        
        var barColours = ["#842593"]
        for(let i = 1; i < xValues.length; i++) {
        	barColours.push(getRandomColour());
        }

        const salesCtx = document.getElementById('salesChart').getContext('2d');

        new Chart(salesCtx, {
            type: 'bar',
            data: {
                labels: xValues,
                datasets: [{
                        data: yValues,
                        backgroundColor: barColours,
                        borderWidth: 1
                }]
            },
            options: {
                legend: {display:false},
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
  </div>
</body>


</html>