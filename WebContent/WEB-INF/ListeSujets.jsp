<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sujets disponibles</title>


	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skeleton.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>

<div align="center">
  <h2>Liste des sujets</h2>
  <ul>
    <li><a href="#">Sujet 1</a></li>
    <li><a href="#">Sujet 2</a></li>
    <li><a href="#">Sujet 3</a></li>
    <li><a href="#">Sujet 4</a></li>
    <li><a href="#">Sujet 5</a></li>
    <c:forEach items="${list}" var="item">
    ${item}<br>
</c:forEach>
  </ul>
</div>
</body>
</html>