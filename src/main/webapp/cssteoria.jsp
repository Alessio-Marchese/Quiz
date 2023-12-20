<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"
	import="it.generationitaly.quizapp.entity.Utente"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teoria CSS</title>
<link href="style/index-style2.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="style/footer-style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<%
	Utente utente = (Utente) session.getAttribute("utente");
	%>
	<%
	if (utente == null) {
	%>
	<%@ include file="header-unlogged.jsp"%>
	<%
	} else {
	%>
	<%@ include file="header-logged.jsp"%>
	<%
	}
	%>
	<br>
	<div class="div-teoria">
	<h1>Introduzione a CSS</h1>
	<br>
	<br>
		<h1>Che cos'è CSS?</h1>
		<br>
		<p>Java è un linguaggio di programmazione ad alto livello e
			orientato agli oggetti.
			È noto per la sua portabilità, in quanto il codice Java può
			essere eseguito su diverse piattaforme senza dover essere riadattato.
		Java è apprezzato per la sua sintassi chiara, la gestione della
			memoria automatica e la sua ampia adozione nella creazione di
			software enterprise, applicazioni Android, giochi e molto altro
			ancora.</p>
			<br>
			<p>È usato per:</p>
<ol>
  <li>
  Applicazioni mobili (specialmente app Android)
  </li>
  <li>
  Applicazioni desktop
  </li>
  <li>
  Applicazioni web
  </li>
  <li>
  Server web e server di applicazioni
  </li>
  <li>
  Giochi
  </li>
  <li>
  Connessioni a database
  </li>
  <li>
  E molto, molto altro ancora!
  </li>
</ol>
	    <h1>Perché usare CSS?</h1>
	    <br>
	<ol>
  <li>Java funziona su piattaforme diverse (Windows, Mac, Linux, Raspberry Pi, ecc.)</li>
  <li>È uno dei linguaggi di programmazione più popolari al mondo</li>
  <li>Ha una grande domanda nel mercato del lavoro attuale</li>
  <li>È facile da imparare e semplice da usare</li>
  <li>È open-source e gratuito</li>
  <li>È sicuro, veloce e potente</li>
  <li>Ha un'enorme comunità di supporto (decine di milioni di sviluppatori)</li>
  <li>Java è un linguaggio orientato agli oggetti che fornisce una struttura chiara ai programmi e consente il riutilizzo del codice, riducendo i costi di sviluppo</li>
  <li>Essendo vicino a C++ e C#, Java facilita il passaggio dei programmatori da un linguaggio all'altro e viceversa</li>
</ol>
	</div>



	<%@ include file="footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>