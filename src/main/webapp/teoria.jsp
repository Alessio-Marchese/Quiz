<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="it.generationitaly.quizapp.entity.Utente"
	import="it.generationitaly.quizapp.entity.Contenuto"
	import="it.generationitaly.quizapp.entity.Linguaggio"
	import="it.generationitaly.quizapp.entity.Capitolo"
	import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style/index-style2.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="style/teoria.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">


</head>
<body>
	<%
	List<Contenuto> contenuti = (List<Contenuto>) request.getAttribute("contenuti");
	List<Capitolo> capitoli = (List<Capitolo>) request.getAttribute("capitoli");
	Linguaggio linguaggio = (Linguaggio) request.getAttribute("linguaggio");
	%>
	<%@ include file="include/header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-2">

				<dl>
					<%
					for (Capitolo capitolo : capitoli) {
					%>
					<dt style="margin: 10px;">
						<a style="color: black;"
							href="teoria?idCapitolo=<%=capitolo.getId()%>"><%=capitolo.getNome()%></a>
					</dt>
					<%
					}
					%>
				</dl>
			</div>
			<div class="col-6"
				style="margin-top: 50px; margin-left: 50px; width: 800px; height: 700px; background: white; overflow: scroll;">


				<div class="nextprev">
					<%
					int currentCapitoloId = ((Capitolo) request.getAttribute("capitolo")).getId();
					int prevCapitoloId = currentCapitoloId - 1;
					int nextCapitoloId = currentCapitoloId + 1;
					%>

					<%
					if (prevCapitoloId > 0) {
					%>
					<a href="teoria?idCapitolo=<%=prevCapitoloId%>">
						<button type="button" class="btn btn-danger"> &lt; Prev</button> 
 
 <% } else { %>
	 <a href="index.jsp">
	<button type="button" class="btn btn-danger"> &lt; Home</button> 
 <%
					}
					%>
<% if (nextCapitoloId < 40) {
 %>
					</a> <a href="teoria?idCapitolo=<%=nextCapitoloId%>">
						<button type="button" class="btn btn-danger">Next &gt;</button>
					</a>
					<%
					}
					%>
				</div>

				<%
				for (Contenuto contenuto : contenuti) {
				%>
				<%
				switch (contenuto.getTipo().getValue()) {
				case "paragrafo":
				%>
				<p class="paragrafo-cap"><%=contenuto.getContenuto()%></p>
				<%
				break;
				case "titolo":
				%>
				<h1 class="titolo-cap"><%=contenuto.getContenuto()%></h1>
				<%
				break;
				case "spazio":
				%>
				<div style="height: 20px;"></div>
				<%
				break;
				case "immagine":
				%>
				<img class="img-cap" src="<%=contenuto.getContenuto()%>" alt="1"
					border="0" style="height: auto;" />
				<%
				break;
				}
				}
				%>

			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>