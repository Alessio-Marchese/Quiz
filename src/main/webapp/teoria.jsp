<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="it.generationitaly.quizapp.entity.Utente"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	</head>
	<body>
		<% Utente utente = (Utente) session.getAttribute("utente"); %>
		<% if(utente == null) { %>
			<%@ include file="include/header-unlogged.jsp" %>
	    <% } else { %>
			<%@ include file="include/header-logged.jsp" %>
		<% } %>
		<div class="container">
			<div class="row">
				<div class="col-2">
				
				</div>
				<div class="col-6">
					
				</div>
			</div>
		</div>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	</body>
</html>