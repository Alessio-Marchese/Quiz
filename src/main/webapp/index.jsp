<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="it.generationitaly.quizapp.entity.Utente"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Benvenuto</title>
<script type="text/javascript" src="style/slide-index.js"></script>
<link href="style/index-style2.css" rel="stylesheet" type="text/css">
<link href="slide-index.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="style/footer-style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body id="body">
	<%@ include file="include/header.jsp"%>
	<div class="section">
		<iframe class="frame-1" src="https://giphy.com/embed/xT9IgzoKnwFNmISR8I"></iframe>
		<br><br>
		<br><br><br><br>
		<p>Impara a programmare con</p>
		<h1>QuizMaster</h1>
	</div>
	<div class="section2">
		<br>
		<br>
		<br> <img class="img_left"
			src="https://i.ibb.co/26L4rVv/eclipseconfermato.png" />
		<h1>Java</h1>
		<p>Linguaggio orientato agli oggetti</p>
		<a href="teoria?idCapitolo=1&idLinguaggio=1"><button type="button"
				class="btn btn-warning">Impara Java</button></a> <a
			href="https://www.youtube.com/watch?v=hfl3n1RqLQE&list=PLP5MAKLy8lP9wbmTi6c4-tmqzyOtLglGP"><button
				type="button" class="btn btn-danger">Video tutorial</button></a> <br>
		<br>
		<button type="button" class="btn btn-dark">Affronta i quiz</button>
	</div>
	<div class="section3">
		<br>
		<br>
		<br> <img class="img_right"
			src="https://i.ibb.co/y4csDDY/htmlprova.png" />
		<h1>HTML</h1>
		<p>Il linguaggio per creare website</p>
		<a href="teoria?idCapitolo=2&idLinguaggio=2"><button type="button"
				class="btn btn-warning">Impara HTML</button></a> <a
			href="https://www.youtube.com/watch?v=1C-ZbhVZ3sI&list=PLP5MAKLy8lP8U-yYn6J4hGfcee4Tirieg"><button
				type="button" class="btn btn-danger">Video tutorial</button></a> <br>
		<br>
		<button type="button" class="btn btn-dark">Affronta i quiz</button>
	</div>
	<div class="section4">
		<br>
		<br>
		<br> <img class="img_left"
			src="https://i.ibb.co/CmzbpHt/cssscreen.png" />
		<h1>CSS</h1>
		<p>Il linguaggio per stilizzare il tuo sito</p>
		<a href="teoria?idCapitolo=3&idLinguaggio=3"><button type="button"
				class="btn btn-warning">Impara CSS</button></a> <a
			href="https://www.youtube.com/watch?v=HwkD5lRe0jw&list=PLP5MAKLy8lP-a0MG-MFHKCISmj2Wg4vT6"><button
				type="button" class="btn btn-danger">Video tutorial</button></a> <br>
		<br>
		<button type="button" class="btn btn-dark">Affronta i quiz</button>
	</div>
	<div class="section5">
		<br>
		<br>
		<br> <img class="img_right"
			src="https://i.ibb.co/mB3Y8gK/javascripticona.png" />
		<h1>Javascript</h1>
		<p>Il linguaggio per rendere interattivo il sito</p>
		<a href="teoria?idCapitolo=4&idLinguaggio=4"><button type="button"
				class="btn btn-warning">Impara Javascript</button></a> <a
			href="https://www.youtube.com/watch?v=84TYC44ezIU&list=PLP5MAKLy8lP9FUx06-avV66mS8LXz7_Bb"><button
				type="button" class="btn btn-danger">Video tutorial</button></a> <br>
		<br>
		<button type="button" class="btn btn-light">Affronta i quiz</button>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
<%@ include file="include/footer.jsp"%>
</html>