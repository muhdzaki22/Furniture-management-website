<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
    <link href="lis.css" rel="stylesheet" />
    <title>Admin Homepage</title>
</head>

<body>
<%@ include file="admin_header.jsp" %>
<div class="homepage-container">
<span class="header-text">${oldText.getT1()}</span><div class="btn_textedit"><a href="adminHomepageEdit.jsp"><img src="https://cdn-icons-png.flaticon.com/512/1159/1159633.png"/></a></div>
<div class="bottom-part">
<div class="browse-shop">
    <a href="listproductV2.jsp"><span class="browse-shop-text">Browse our shop</span></a>
<div class="name"></div>
</div>
<span class="tagline">${oldText.getT2()}</span><div class="btn_textedit"><a href="adminHomepageEdit.jsp"><img src="https://cdn-icons-png.flaticon.com/512/1159/1159633.png"/></a></div>
<div class="empty-div"></div>
<span class="subheader">${oldText.getT3()}</span><div class="btn_textedit"><a href="adminHomepageEditing.jsp"><img src="https://cdn-icons-png.flaticon.com/512/1159/1159633.png"/></a></div>

<span class="description">${oldText.getT4()}</span><div class="btn_textedit"><a href="adminHomepageEdit.jsp"><img src="https://cdn-icons-png.flaticon.com/512/1159/1159633.png"/></a></div>
</div>
</div>
</body>
</html>