<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	position: relative;
}

.affix {
	top: 0;
	width: 100%;
	z-index: 9999 !important;
}

.navbar {
	margin-bottom: 0px;
}

.affix ~ .container-fluid {
	position: relative;
	top: 50px;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

	<div class="container-fluid"
		style="background-color: #C0C0C0; color: #fff; height: 100px; text-align: center">
		<h2>Gestion Projet - Etudiant</h2>
		<a style="float: right; margin-right: 10px; margin-top: 10px"
			href="/GestionProjet/connexion">Déconnexion</a>
	</div>

	<nav class="navbar navbar-default" data-spy="affix"
		data-offset-top="97">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/GestionProjet/">Gestion Projet</a>
		</div>
		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="/GestionProjet/">Section 1</a></li>
					<li><a href="#section2">Section 2</a></li>
					<li><a href="#section3">Section 3</a></li>
				</ul>
			</div>
		</div>
	</div>
	</nav>


</body>
</html>