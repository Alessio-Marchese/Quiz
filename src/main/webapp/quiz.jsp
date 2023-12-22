<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="org.hibernate.tool.schema.extract.internal.SequenceNameExtractorImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"
    import="java.util.List"
    import="it.generationitaly.quizapp.entity.QuizVeroFalso"
    import="it.generationitaly.quizapp.entity.Utente"
    import="it.generationitaly.quizapp.entity.QuizMultiplo"
    import="it.generationitaly.quizapp.entity.Linguaggio"
    import="java.util.ArrayList"
    import="java.util.Random"
    import="it.generationitaly.quizapp.entity.Capitolo"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">	
		<link rel="stylesheet" href="style/footer-style.css">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
	</head>
	<body id="body">
		<% 
		Linguaggio linguaggio = (Linguaggio) request.getAttribute("linguaggio");
		
		List<Capitolo> capitoli = (List<Capitolo>) request.getAttribute("capitoli");
		QuizVeroFalso quizVF = null;
		QuizMultiplo quizMultiplo = null;
		Object object = request.getAttribute("quiz");
		if(object instanceof QuizVeroFalso) {
			quizVF = (QuizVeroFalso) object;
		} else {
			quizMultiplo = (QuizMultiplo) object;
		}
		%>
	<%@ include file="include/header.jsp" %>
		<div id="pagina">
		<div class="container">
			<div class="row">
				<div class="col-2">
					<div style="background-color: grey; border: 2px solid black; border-radius: 15px; height: auto; margin-top: 50px;">
						<dl>
						<%for(Capitolo capitolo : capitoli) { %>
							<dt style="margin: 10px;"><a  style="color: black; "href="quiz?idCapitolo=<%=capitolo.getId()%>"><%= capitolo.getNome() %></a></dt>
						<% } %>
							<dt style="margin: 10px;"><a  style="color: black; "href="quizFinale?idLinguaggio=<%=linguaggio.getId()%>"><%= linguaggio.getNome() %> esame finale</a></dt>
						</dl>
					</div>
				</div>
				<div class="col-6">
					<% if(quizVF != null) { %>
					<h1>Domanda Vero Falso</h1>
					<p><%= quizVF.getDomanda() %></p>
					<form action="quiz" method="post">
						<input type="hidden" name="idCapitolo" value="<%=quizVF.getCapitolo().getId()%>">
						<input type="hidden" name="idVF" value="<%= quizVF.getId()%>">
						<label>
            				<input type="radio" name="verofalso" value="vero"> Vero
        				</label>
        				<label>
            				<input type="radio" name="verofalso" value="falso"> Falso
        				</label>
        				<button type="submit">Prossima</button>
					</form>
					<% } else if (quizMultiplo != null){ %>
						<% 
						    Random random = new Random();
							List<String> risposte = new ArrayList<String>();
						    String prima = quizMultiplo.getCorretta();
						    String seconda = quizMultiplo.getErrore1();
						    String terza = quizMultiplo.getErrore2();
						    risposte.add(prima);
						    risposte.add(seconda);
						    risposte.add(terza);
						    int random1 = random.nextInt(risposte.size());
						    String primaRandom = risposte.get(random1);
						    risposte.remove(random1);
						    int random2 = random.nextInt(risposte.size());
						    String secondaRandom = risposte.get(random2);
						    risposte.remove(random2);
						    
						%>
						<h1>Domanda a risposta multipla</h1>
						<p><%= quizMultiplo.getDomanda() %></p>
						<form action="quiz" method="post">
							<input type="hidden" name="idCapitolo" value="<%=quizMultiplo.getCapitolo().getId()%>">
							<input type="hidden" name="idQM" value="<%=quizMultiplo.getId()%>">
							<label>
            					<input type="radio" name="risposta" value="<%= primaRandom %>"> <%= primaRandom %>
        					</label>
        					<label>
            					<input type="radio" name="risposta" value="<%= secondaRandom %>"> <%= secondaRandom %>
        					</label>
        					<label>
            					<input type="radio" name="risposta" value="<%= risposte.get(0) %>"> <%= risposte.get(0) %>
        					</label>
        					<button type="submit">Prossima</button>
						</form>
					<% } %>
				</div>
			</div>
		</div>
		<%@ include file="include/footer.jsp" %>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	</body>
</html>