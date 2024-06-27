<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.TextManager"  %>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<link href="adminhomepageV2.css" rel="stylesheet" />

<title>Editing: Homepage</title>
</head>
<%@ include file="admin_header.jsp" %>
<body>
<% 
	TextManager oldText = new TextManager();
	request.setAttribute("oldText", oldText);
%>
<div class="bottom-part"></div>
</div>
</body>
</html>