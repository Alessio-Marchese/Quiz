<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Chi Siamo - QuizMaster Team</title>
    
    <!-- Importazione e applicazione del font Roboto Mono -->
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@400;700&display=swap');

    /* Applica il font Roboto Mono a tutti gli elementi della pagina */
    body, h1, h2, h3, h4, h5, h6, p, a, button, input, textarea {
        font-family: 'Roboto Mono', monospace;
    }
    </style>

    <link href="style/StileChiSiamo.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
          crossorigin="anonymous">
</head>
<body> 
    <%@ include file="include/header.jsp" %>

    <main class="container">
        <section class="about-us my-5">
            <h1 class="text-center">Chi Siamo</h1>
            <p class="text-justify">Siamo un team di programmatori entusiasti, con una passione condivisa per la tecnologia e l'innovazione. Iniziando il nostro percorso nel mondo dello sviluppo software, ci impegniamo a creare esperienze di apprendimento interattive e coinvolgenti per aspiranti programmatori.</p>
        </section>
    </main>

    <%@ include file="include/footer.jsp"%>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" 
            crossorigin="anonymous"></script>
</body>
</html>
