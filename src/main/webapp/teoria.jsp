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

<link rel="stylesheet" href="style/footer-style.css" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
	<link rel="stylesheet" href="style/teoria.css">
<style>
	.custom-scrollbar::-webkit-scrollbar {
  width: 12px;
}

.custom-scrollbar::-webkit-scrollbar-track {
  background-color: transparent;
}

.custom-scrollbar::-webkit-scrollbar-thumb {
  background-color: white;
  border-radius: 6px;
}

.custom-scrollbar::-webkit-scrollbar-corner {
  background-color: transparent;
}
</style>

</head>
<body style="background-color: #24262b;">
	<%
	List<Contenuto> contenuti = (List<Contenuto>) request.getAttribute("contenuti");
	List<Capitolo> capitoli = (List<Capitolo>) request.getAttribute("capitoli");
	Linguaggio linguaggio = (Linguaggio) request.getAttribute("linguaggio");
	%>
	<%@ include file="include/header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-2 custom-scrollbar" style="	 width: 200px;
     height: 700px;
     overflow: scroll;
     overflow-x: hidden;
    background-color: #242625;
    border: 5px solid rgb(100, 100, 100);
    border-radius: 15px;
    padding: 10px;
    margin-top: 50px;
    margin-left: 50px;
    font-family: 'Playfair Display', serif;
    color: rgb(255, 61, 66);
			">

				<dl>
				<h2><%=linguaggio.getNome()%></h2>
					<%
					for (Capitolo capitolo : capitoli) {
					%>
					<dt style="margin: 10px;">
						<a style="color: white;"
							href="teoria?idCapitolo=<%=capitolo.getId()%>&idLinguaggio=<%=linguaggio.getId()%>"><%=capitolo.getNome()%></a>
					</dt>
					<%
					}
					%>
				</dl>
			</div>
			<div class="col-6 custom-scrollbar"
				style="margin-top: 50px; margin-left: 50px; color: white; width: 800px; height: 700px; background-color: #242625; overflow: scroll;">


				<div class="nextprev">
					<%
					int currentCapitoloId = ((Capitolo) request.getAttribute("capitolo")).getId();
					int prevCapitoloId = currentCapitoloId - 1;
					int nextCapitoloId = currentCapitoloId + 1;
					%>

					<%
					if (prevCapitoloId > 0) {
					%>
					<a href="teoria?idCapitolo=<%=prevCapitoloId%>&idLinguaggio=<%=linguaggio.getId()%>">
						<button type="button" class="btn btn-danger"> &lt; Prev</button> 
					</a>
 
 <% } else { %>
	 <a href="index.jsp">
	<button type="button" class="btn btn-danger"> &lt; Home</button>
	</a> 
 <%
					}
					%>
<% if (nextCapitoloId <= capitoli.get(capitoli.size()-1).getId()) {
 %>
					</a> <a href="teoria?idCapitolo=<%=nextCapitoloId%>&idLinguaggio=<%=linguaggio.getId()%>">
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
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			<h1>1</h1>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
<%@ include file="include/footer.jsp" %>
</html>