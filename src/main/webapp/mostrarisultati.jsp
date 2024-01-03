<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="it.generationitaly.quizapp.entity.QuizMultiplo"%>
<%@ page import="it.generationitaly.quizapp.entity.QuizVeroFalso"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Risultati Quiz</title>
<link rel="stylesheet" href="style/footer-style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link href="style/StileMostraRisultati.css" rel="stylesheet"
	type="text/css">
<style>
#answerDetails {
	display: none;
	justify-content: space-between;
}

.answer-column {
	width: 48%;
}

#emptyContainer {
	min-height: 280px;
}

.scroll {
	width: 500px;
	height: 400px;
	overflow: scroll;
}
</style>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Mono&display=swap"
	rel="stylesheet">
<link rel="icon" href="https://i.ibb.co/1fCPvSh/QUIZ5.png">
</head>
<body>
	<%@ include file="include/header.jsp"%>

	<div class="quiz-body">
		<div class="quiz-content">
			<%
			List<Object> risposteGiuste = (List<Object>) request.getSession().getAttribute("risposteGiuste");
			List<Object> risposteSbagliate = (List<Object>) request.getSession().getAttribute("risposteSbagliate");
			int totalQuestions = risposteGiuste.size() + risposteSbagliate.size();
			int correctAnswers = risposteGiuste.size();
			double score = (double) correctAnswers / totalQuestions * 100;
			%>
			<h1>Complimenti, hai finito il quiz!</h1>
			<h2>
				Risultato:
				<%=correctAnswers%>
				su
				<%=totalQuestions%>
				(<%=(int) score%>% corrette)
			</h2>

			<button onclick="showDetails()">Controlla le tue risposte</button>

			<div id="answerDetails">
				<div class="answer-column scroll">
					<h2 class="risposte"
						style="position: sticky; top: 0; background-color: #f0f0f0;">Risposte
						Corrette:</h2>
					<%
					for (Object oggetto : risposteGiuste) {
						String style = "background-color: #d4edda !important; border-left: 5px solid #28a745 !important;";
						if (oggetto instanceof QuizMultiplo) {
							QuizMultiplo quiz = (QuizMultiplo) oggetto;
					%>
					<div style="<%=style%>">
						<p>
							<strong>Domanda:</strong>
							<%=quiz.getDomanda()%></p>
						<p>
							<strong>Risposta Corretta:</strong>
							<%=quiz.getCorretta()%></p>
						<p>Risposta dell'utente: Corretta</p>
					</div>
					<%
					} else if (oggetto instanceof QuizVeroFalso) {
					QuizVeroFalso quiz = (QuizVeroFalso) oggetto;
					%>
					<div style="<%=style%>">
						<p>
							<strong>Domanda:</strong>
							<%=quiz.getDomanda()%></p>
						<p>
							<strong>Risposta Corretta:</strong>
							<%=quiz.getBool() ? "Vero" : "Falso"%></p>
						<p>Risposta dell'utente: Corretta</p>
					</div>
					<%
					}
					}
					%>
				</div>
				<div class="answer-column scroll">
					<h2 class="risposte">Risposte Errate:</h2>
					<%
					String style = "background-color: #f8d7da !important; border-left: 5px solid #dc3545 !important;";
					for (Object oggetto : risposteSbagliate) {
						if (oggetto instanceof QuizMultiplo) {
							QuizMultiplo quiz = (QuizMultiplo) oggetto;
					%>
					<div style="<%=style%>">
						<p>
							<strong>Domanda:</strong>
							<%=quiz.getDomanda()%></p>
						<p>
							<strong>Risposta Corretta:</strong>
							<%=quiz.getCorretta()%></p>
						<p>Risposta dell'utente: Errata</p>
					</div>
					<%
					} else if (oggetto instanceof QuizVeroFalso) {
					QuizVeroFalso quiz = (QuizVeroFalso) oggetto;
					%>
					<div style="<%=style%>">
						<p>
							<strong>Domanda:</strong>
							<%=quiz.getDomanda()%></p>
						<p>
							<strong>Risposta Corretta:</strong>
							<%=quiz.getBool() ? "Vero" : "Falso"%></p>
						<p>Risposta dell'utente: Errata</p>
					</div>
					<%
					}
					}
					%>
				</div>
			</div>

			<!-- Contenitore vuoto -->
			<div id="emptyContainer"></div>
		</div>
	</div>

	<%@ include file="include/footer.jsp"%>

	<script>
		function showDetails() {
			var detailsDiv = document.getElementById("answerDetails");
			var emptyContainer = document.getElementById("emptyContainer");

			if (detailsDiv.style.display === "flex") {
				detailsDiv.style.display = "none";
				emptyContainer.style.display = "block";
			} else {
				detailsDiv.style.display = "flex";
				emptyContainer.style.display = "none";
			}
		}
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>

