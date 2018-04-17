<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<title>Intervenants</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
    href="${pageContext.request.contextPath}/css/skeleton.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<style>
html, body, h1, h2, h3, h4, h5, h6 {
	font-family: "Roboto", sans-serif;
}

.w3-sidebar {
	z-index: 3;
	width: 250px;
	top: 40px;
	bottom: 0;
	height: inherit;
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: grey;
	color: white;
	text-align: center;
}
</style>
<body>

	<div class="w3-top">
		<div class="w3-top w3-left-align w3-large"
			style="padding: 6px; background-color: grey; color: white">
			<a
				class="w3-bar-item w3-button w3-right w3-hide-large w3-hover-white w3-large w3-theme-l1"
				href="javascript:void(0)" onclick="w3_open()"><i
				class="fa fa-bars"></i></a> <a href="/GestionProjet/" style="color: #FFF"><span
				class="glyphicon glyphicon-log-out"></span> Deconnexion</a>
			</li>
		</div>
	</div>

	<!-- Sidebar -->
	<nav
		class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5"
		id="mySidebar"> <a href="javascript:void(0)"
		onclick="w3_close()"
		class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large"
		title="Close Menu"> <i class="fa fa-remove"></i>
	</a>
	<h4 class="w3-bar-item">
		<b>Menu</b>
	</h4>
	<a class="w3-bar-item w3-button w3-hover-black" href="/GestionProjet/groupe">Groupe</a> <a
		class="w3-bar-item w3-button w3-hover-black" href="/GestionProjet/ListeSujets">Sujets</a> <a
		class="w3-bar-item w3-button w3-hover-black" href="/GestionProjet/ListeIntervenants">Intervenants</a>
	</nav>
		
		<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
        url = "jdbc:mysql://localhost:3306/workshop2"
        user = "root"  password = ""/>
       
<sql:query dataSource = "${snapshot}" var = "result">
    SELECT * from intervenant;
</sql:query>

<sql:query dataSource = "${snapshot}" var = "result2">
    SELECT * from intervenant where int_id = 1;
</sql:query>

    <div align="center" style="margin-top: 45px;margin-left:250px" class="w3-main">
        <h2>Liste des intervenants</h2>
        <ul>
 <c:forEach var="row" items="${result.rows}">
   <form method="post" action="ListeIntervenants">
   <input type="button" style="font-size: 14px" value="${row.INT_NOM}  ${row.INT_PRENOM}" data-toggle="modal" data-target="#exampleModal"/>&nbsp;<span style="font-size : 20px" class="badge">${row.INT_TOKEN}</span> <img src="${pageContext.request.contextPath}/img/token.png" alt="token" height="30" width="30">  
</form>
</c:forEach>
        </ul>
    </div>
    
    <div align="center" style="margin-left : 260px;position: fixed;bottom: 0; margin-bottom : 40px; width : 100%;" class="w3-main">
<label class="alert alert-info" role="alert">Vous pouvez retrouver ici la liste des intervenants et convenir d'un rendez-vous ou leur envoyer un message</label><br/>
<label class="alert alert-info">Toute prise de rendez-vous ou d'envoi de message vous débitera de <u>1 TOKEN</u></label><br/>

</div>
    
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
<c:forEach var="row" items="${result2.rows}">
        <h3 class="modal-title" id="exampleModalLabel">Contacter un intervenant - ${row.int_nom} ${row.int_prenom}</h3>
</c:forEach>
      </div>
      <div class="modal-body">
<form method="post">
      <div class="form-group">
        <label class="control-label" for="date">Question</label>
        <textarea  class="form-control" id="date" name="question" placeholder="question" type="text" rows="3"></textarea>
        <br/>
        <label class="control-label" for="date">Date</label>
        <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
      </div>
     </form>
      </div>
      <div class="modal-footer">
      <div class="btn-group">
      <form method="post" action="ListeIntervenants" style="margin:0">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Fermer</button>
        <button type="submit" class="btn btn-success">Valider</button></form>
        </div>
      </div>
    </div>
  </div>
</div>
    
	<footer class="footer w3-main" style="margin-left:250px">
	<h6>Kenny / Alexandre / Ludovic / Anne-Christy</h6>
	</footer>

	<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidebar.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
    overlayBg.style.display = "none";
}

$(document).ready(function(){
    var date_input=$('input[name="date"]'); //our date input has the name "date"
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    var options={
      format: 'mm/dd/yyyy',
      container: container,
      todayHighlight: true,
      autoclose: true,
    };
    date_input.datepicker(options);
  })
</script>

</body>
</html>