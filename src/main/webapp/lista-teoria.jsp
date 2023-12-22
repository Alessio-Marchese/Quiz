<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="it.generationitaly.quizapp.entity.Utente"
    import="it.generationitaly.quizapp.entity.Linguaggio"
    import="it.generationitaly.quizapp.entity.Capitolo"
    import="java.util.List"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
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
	Linguaggio linguaggio = (Linguaggio) request.getAttribute("linguaggio");
	%>
<%@ include file="include/header.jsp" %>
		<div class="container">
			<div class="row">
				<div class="col-2">
						<h2 class="titolo-ling"><%=linguaggio.getNome()%></h2>
						<dl>
						<%for(Capitolo capitolo : linguaggio.getCapitoli()) { %>
							<dt style="margin: 10px;"><a style="color: black;" href="teoria?idCapitolo=<%=capitolo.getId()%>&idLinguaggio=<%=linguaggio.getId()%>"><%=capitolo.getNome()%></a></dt>
						<% } %>
							
						</dl>
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