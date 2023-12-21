<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="it.generationitaly.quizapp.entity.QuizMultiplo" %>
<%@ page import="it.generationitaly.quizapp.entity.QuizVeroFalso" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Risultati Quiz</title>
<!--  inserire il  CSS  -->
<!--  questo serve  a nascondere i dettagli del div answerdetails che appare dopo magicamente grazie a javascript  -->
<style>

    #answerDetails {
        display: none;
    }
</style>
</head>
<body>
    <% 
    int idCapitolo = Integer.parseInt(request.getParameter("idCapitolo"));
    List<Object> risposteGiuste = (List<Object>) request.getSession().getAttribute("risposteGiuste");
    List<Object> risposteSbagliate = (List<Object>) request.getSession().getAttribute("risposteSbagliate");
    int totalQuestions = risposteGiuste.size() + risposteSbagliate.size();
    int correctAnswers = risposteGiuste.size();
    double score = (double) correctAnswers / totalQuestions * 100;
    %>
    <h1>Complimenti, hai finito il quiz!</h1>
      <!-- farlo vedere prima in percentuale grazie alla logica fatta sopra e -->
    <h2>Risultato: <%= correctAnswers %> su <%= totalQuestions %> (<%= (int)score %>% corrette)</h2>

    <!-- Bottone per mostrare i dettagli -->
    <button onclick="showDetails()">Controlla le tue risposte</button>

    <!-- Sezione per i dettagli delle risposte -->
    <div id="answerDetails">
        <h2>Risposte Corrette:</h2>
        <% 
        for(Object oggetto : risposteGiuste) {
            if(oggetto instanceof QuizMultiplo) {
                QuizMultiplo quiz = (QuizMultiplo) oggetto;
                %>
                    <div>
                        <p><strong>Domanda:</strong> <%= quiz.getDomanda() %></p>
                        <p><strong>Risposta Corretta:</strong> <%= quiz.getCorretta() %></p>
                        <p>Risposta dell'utente: Corretta</p>
                    </div>
                <%
            } else if (oggetto instanceof QuizVeroFalso) {
                QuizVeroFalso quiz = (QuizVeroFalso) oggetto;
                %>
                    <div>
                        <p><strong>Domanda:</strong> <%= quiz.getDomanda() %></p>
                        <p><strong>Risposta Corretta:</strong> <%= quiz.getBool() ? "Vero" : "Falso" %></p>
                        <p>Risposta dell'utente: Corretta</p>
                    </div>
                <%
            }
        }
        %>

        <h2>Risposte Errate:</h2>
<% 
for(Object oggetto : risposteSbagliate) {
    if(oggetto instanceof QuizMultiplo) {
        QuizMultiplo quiz = (QuizMultiplo) oggetto;
        %>
            <div>
                <p><strong>Domanda:</strong> <%= quiz.getDomanda() %></p>
                <p><strong>Risposta Corretta:</strong> <%= quiz.getCorretta() %></p>
                <p>Risposta dell'utente: Errata</p>
            </div>
        <%
    } else if (oggetto instanceof QuizVeroFalso) {
        QuizVeroFalso quiz = (QuizVeroFalso) oggetto;
        %>
            <div>
                <p><strong>Domanda:</strong> <%= quiz.getDomanda() %></p>
                <p><strong>Risposta Corretta:</strong> <%= quiz.getBool() ? "Vero" : "Falso" %></p>
                <p>Risposta dell'utente: Errata</p>
            </div>
        <%
    }
}
%>


    <a href="quiz?idCapitolo=<%= idCapitolo %>">Torna al quiz</a>
    
    <script>
        function showDetails() {
            var detailsDiv = document.getElementById("answerDetails");
            detailsDiv.style.display = detailsDiv.style.display === "block" ? "none" : "block";
        }
    </script>
</body>
</html>

