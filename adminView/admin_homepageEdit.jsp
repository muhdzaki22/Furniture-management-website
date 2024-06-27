<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.TextManager"  %>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Newsreader&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<link href="adminhomepageV2.css" rel="stylesheet" />
<style>
div.btn_textedit {
	width:30px;
	height:30px;
}
</style>
<title>Editing: Homepage</title>
</head>
<%@ include file="admin_headerEdit.jsp" %>
<body>
<% 
	TextManager oldText = new TextManager();
	request.setAttribute("oldText", oldText);
%>
<form action="PagetextController" method="post">
<div class="homepage-container">
	<span class="header-text"><textarea name="newT1" rows="5" cols="44"
	style="text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); font-family: Newsreader; font-weight: Regular; font-size: 45px; text-align: center; 	border: none; outline: none;">${oldText.getT1()}</textarea></span><div class="btn_textedit">
	<div  class="v294_191"><input class="v294_192" type="submit" value="Save edits"></input></div>
	<div class="name"></div>
	<span class="tagline"><textarea name="newT2" rows="1" style="font-family: Inter; font-weight: Semi Bold; font-size: 32px;">${oldText.getT2()}</textarea></span>
	<div class="empty-div"></div>
	<span class="subheader"><textarea name="newT3" rows="1" style="font-size: 16px text-align: left;">${oldText.getT3()}</textarea></span>
<div class="bottom-part">
</div>
</div>
</body>
</html>