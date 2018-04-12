<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sujets disponibles</title>


	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skeleton.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/workshop2"
         user = "root"  password = ""/>
         
<sql:query dataSource = "${snapshot}" var = "result">
	SELECT suj_nom from sujet;
</sql:query>

<div align="center">
  <h2>Liste des sujets</h2>
  <ul>
    <li><a href="#">Sujet 1</a></li>
    <c:forEach var="row" items="${result.rows}">
    <li><a href="#">${row}</a></li>  
</c:forEach>
  </ul>
</div>
</body>
</html>