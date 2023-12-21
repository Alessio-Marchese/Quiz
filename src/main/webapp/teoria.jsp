<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="it.generationitaly.quizapp.entity.Utente"
    import="it.generationitaly.quizapp.entity.Contenuto"
    import="it.generationitaly.quizapp.entity.Linguaggio"
    import="it.generationitaly.quizapp.entity.Capitolo"
    import="java.util.List"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	</head>
	<body>
		<%
		   List<Contenuto> contenuti = (List<Contenuto>) request.getAttribute("contenuti");
		   List<Capitolo> capitoli = (List<Capitolo>) request.getAttribute("capitoli");
		%>
	<%@ include file="include/header.jsp" %>
		<div class="container">
			<div class="row">
				<div class="col-2">
					<div style="background-color: grey; border: 2px solid black; border-radius: 15px; height: auto; margin-top: 50px;">
						<dl>
						<%for(Capitolo capitolo : capitoli) { %>
							<dt style="margin: 10px;"><a  style="color: black; "href="teoria?idCapitolo=<%=capitolo.getId()%>"><%= capitolo.getNome() %></a></dt>
						<% } %>
						</dl>
					</div>
				</div>
				<div class="col-6" style="margin-top: 50px; margin-left: 50px; background-color: grey; border: 2px solid black; border-radius: 15px; height: auto;">
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
						<img src="<%=contenuto.getContenuto() %>" alt="1" border="0" style="height: auto;" />
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