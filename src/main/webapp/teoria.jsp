<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"
    import="it.generationitaly.quizapp.entity.Utente"
    import="it.generationitaly.quizapp.entity.Contenuto"
    import="it.generationitaly.quizapp.entity.Linguaggio"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	</head>
	<body>
		<% Utente utente = (Utente) session.getAttribute("utente");
		   List<Contenuto> contenuti = (List<Contenuto>) request.getAttribute("contenuti");
		%>
		<% if(utente == null) { %>
			<%@ include file="include/header-unlogged.jsp" %>
	    <% } else { %>
			<%@ include file="include/header-logged.jsp" %>
		<% } %>
		<div class="container">
			<div class="row">
				<div class="col-6">
					<% for(Contenuto contenuto : contenuti) { %>
					<% switch(contenuto.getTipo().getValue()) {
					case "paragrafo": %>
						<p><%= contenuto.getContenuto() %></p>
					<% 	break;
					case "titolo": %>
						<h1><%= contenuto.getContenuto() %></h1>
					<% 	break;
					case "spazio": %>
						<div style="height: 20px;"></div>
					<% 	break;
					case "immagine": %>
						<img src="<%=contenuto.getContenuto() %>" alt="1" border="0" />
					<% 	break;
						}
					 } %>
				</div>
				<div class="col-6">
					
				</div>
			</div>
		</div>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	</body>
</html>