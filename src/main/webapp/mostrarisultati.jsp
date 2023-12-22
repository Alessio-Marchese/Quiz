<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="it.generationitaly.quizapp.entity.QuizMultiplo" %>
<%@ page import="it.generationitaly.quizapp.entity.QuizVeroFalso" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Risultati Quiz</title>
    <link rel="stylesheet" href="style/footer-style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="style/StileMostraRisultati.css" rel="stylesheet" type="text/css">
    <style>
        #answerDetails {
            display: none;
        }
        .quiz-body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
        }
        .quiz-content {
            width: 50%;  /* Adatta questa larghezza secondo le tue preferenze */
            max-width: 960px; /* Adatta questa massima larghezza secondo le tue preferenze */
            margin: 0 auto; /* Centra il contenuto orizzontalmente */
        }
    </style>
</head>
<body>
    <%@ include file="include/header.jsp" %>

    <div class="quiz-body">
        <div class="quiz-content">
            <% 
            int idCapitolo = Integer.parseInt(request.getParameter("idCapitolo"));
            List<Object> risposteGiuste = (List<Object>) request.getSession().getAttribute("risposteGiuste");
            List<Object> risposteSbagliate = (List<Object>) request.getSession().getAttribute("risposteSbagliate");
            int totalQuestions = risposteGiuste.size() + risposteSbagliate.size();
            int correctAnswers = risposteGiuste.size();
            double score = (double) correctAnswers / totalQuestions * 100;
            %>
            <h1>Complimenti, hai finito il quiz!</h1>
            <h2>Risultato: <%= correctAnswers %> su <%= totalQuestions %> (<%= (int)score %>% corrette)</h2>

            <button onclick="showDetails()">Controlla le tue risposte</button>

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
            </div>
        </div>
    </div>

    <%@ include file="include/footer.jsp"%>

    <script>
        function showDetails() {
            var detailsDiv = document.getElementById("answerDetails");
            detailsDiv.style.display = detailsDiv.style.display === "block" ? "none" : "block";
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</body>
</html>
