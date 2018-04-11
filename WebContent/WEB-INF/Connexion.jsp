<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Connexion</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
</head>
<div class="limiter">
		<div class="container-connexion">
			<div class="bulle-connexion p-b-160 p-t-50">
				<form class="connexion-form validate-form" method="post">
					<span class="connexion-form-titre p-b-43">
						Bienvenue
					</span>
					
					<div class="wrap-insertion rs1 validate-input" data-validate = "Le nom d'utilisateur est requis">
						<input class="insertion" type="text" name="username" id="user" placeholder="Nom d'utilisateur">
					</div>
					
					
					<div class="wrap-insertion rs2 validate-input" data-validate="Le mot de passe est requis">
						<input class="insertion" type="password" name="pass" placeholder="Mot de passe">
					</div>

					<div class="container-connexion-form-btn">
						<button class="connexion-form-btn">
							Connexion
						</button>
					</div>
					
					<div class="text-center w-full p-t-23">
						<a href="/GestionProjet/mdpOublie" class="txt1">
							Mot de passe oublié?
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="vendor/animsition/js/animsition.min.js"></script>
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

</body>
</html>