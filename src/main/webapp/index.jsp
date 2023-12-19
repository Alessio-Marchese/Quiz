<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"
	import="it.generationitaly.quizapp.entity.Utente"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style/index-style.css" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
	<link rel="stylesheet" href="style/footer-style.css">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body id="body">
	<%
	Utente utente = (Utente) session.getAttribute("utente");
	if (utente == null) {
	%>
	<%@ include file="header-unlogged.jsp"%>
	<%
	} else {
	%>
	<%@ include file="header-logged.jsp"%>
	<%
	}
	%>
	<div id="pagina">
<div class="hero">
  <h1>Benvenuto su *nome*!</h1>
  <p>Segui le nostre lezioni teoriche e affronta i quiz.</p>
  <a href="register.jsp" class="btn-primary">REGISTRATI</a>
</div>
</div>
	<%@ include file="footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>