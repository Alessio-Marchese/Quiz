<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="style/login-style2.css" rel="stylesheet" type="text/css">
<link rel="icon" href="https://i.ibb.co/1fCPvSh/QUIZ5.png" >
</head>
<body>
	<div class="login-box">
		<h2>Register</h2>
		<form id="myForm" action="saveUtente" method="post">
			<div id="meta1">
				<div class="user-box">
					<input id="username" type="text" name="username"> <label>Username</label>
				</div>
				<div class="user-box">
					<input id="password" type="password" name="password"> <label>Password</label>
				</div>
				<div class="user-box">
					<input id="confermaPassword" type="password"
						name="confermaPassword"> <label>Conferma password</label>
				</div>
				<div class="user-box">
					<input id="email" type="text" name="email"> <label>Email</label>
				</div>
			</div>
			<div id="meta2" style="display: none;">
				<div class="user-box">
					<input id="nome" type="text" name="nome"> <label>Nome</label>
				</div>
				<div class="user-box">
					<input id="cognome" type="text" name="cognome"> <label>Cognome</label>
				</div>
				<div class="user-box">
					<br> <input id="nascita" type="date" name="nascita"> <label>Data
						di nascita</label>
				</div>
				<div class="user-box">
					<br> <input id="telefono" type="number" name="telefono">
					<label>Telefono</label>
				</div>
			</div>
			<div class="user-box">
				<%
				String errore = null;
				if (request.getParameter("erroreUtente") != null)
					errore = "Username non disponibile";
				%>
				<span style="color: red;" id="messaggio1"><%=errore == null ? "" : errore%></span>
			</div>
			<div class="user-box" style="margin-top: 20px;">
				<span style="color: red;" id="messaggio2"></span>
			</div>
			<button id="controllaPrima" type="button" class="login-button">
				<span></span> <span></span> <span></span> <span></span> CONTINUA
			</button>
			<button id="submitButton" type="button" class="login-button"
				style="display: none;">
				<span></span> <span></span> <span></span> <span></span> ISCRIVITI
			</button>
		</form>
	</div>
	<script>
		document.getElementById('controllaPrima').addEventListener('click',
				controllaPrima);
		document.getElementById('submitButton').addEventListener('click',
				controllaSeconda);

		//EVENT LISTENER CHE TIENE TRACCIA DEL TASTO ENTER E DELLE FRECCETTE SOPRA/SOTTO, ENTER PER PASSARE AL PROSSIMO INPUT O CLICCARE IL TASTO SE SIAMO SULL'ULTIMO INPUT
		// E FRECCETTE PER ANDARE DA UN INPUT ALL'ALTRO DALLA TASTIERA
		document.addEventListener('keydown', function(event) {

			//PRENDE TUTTI GLI ELEMENTI INPUT E LI CONSERVA IN UN ARRAY
			var mioArray = [];
			mioArray.push(document.getElementById('username'));
			mioArray.push(document.getElementById('password'));
			mioArray.push(document.getElementById('confermaPassword'));
			mioArray.push(document.getElementById('email'));
			mioArray.push(document.getElementById('nome'));
			mioArray.push(document.getElementById('cognome'));
			mioArray.push(document.getElementById('nascita'));
			mioArray.push(document.getElementById('telefono'));

			//SE L'EVENTO KEYCODE EQUIVALE A 13(TASTO ENTER)
			if (event.keyCode === 13) {
				//PREVIENI IL COMPORTAMENTO DI DEFAULT DELL'EVENTO (QUINDI NON FA LA SUBMIT)
				event.preventDefault();

				//OTTIENE L'INPUT CHE ATTUALMENTE è IN FOCUS
				var inputInFocus = document.activeElement;

				//TIENE TRACCIA DELL'INDICE IN BASE ALL'INPUT CHE è IN FOCUS
				var currentIndex = Array.from(mioArray).indexOf(inputInFocus);

				//SE è STATO PREMUTO ENTER MENTRE LA POSIZIONE IN CUI CI TROVIAMO EQUIVALE ALLA QUARTA CELLA DELL'ARRAY SIGNIFICA CHE ABBIAMO INSERITO L'ULTIMO CAMPO E ORA POSSIAMO
				// CLICCARE IL BOTTONE, COSA CHE ACCADE CON IL RICHIAMO DEL METODO
				if (currentIndex === mioArray.length - 5) {
					controllaPrima(event);
				} else if (currentIndex === mioArray.length - 1) {
					//ALTRIMENTI SE EQUIVALE ALL'ULTIMA CELLA SIGNIFICA CHE ABBIAMO FINITO DI INSERIRE I DATI DEL SECONDO FORM E QUINDI CHIAMA IL METODO PER INVIARE LA SUBMIT
					controllaSeconda(event);
				} else {
					//ALTRIMENTI SIGNIFICA CHE VOGLIAMO SOLO SALTARE ALLA PROSSIMA INPUT E QUINDI IL CURRENT INDEX AUMENTA DI UNO E IMPOSTIAMO IL FOCUS A QUELL'INPUT
					mioArray[currentIndex + 1].focus();
				}
			}

			//SE L'EVENTO KEYCODE EQUIVALE A ArrowUp o ArrowDown
			if (event.key === "ArrowUp" || event.key === "ArrowDown") {
				// Impedisci il comportamento predefinito del tasto freccia per evitare lo scrolling della pagina
				event.preventDefault();

				// Trova l'elemento input attualmente in focus
				var inputInFocus = document.activeElement;

				// Trova l'indice dell'elemento input attualmente in focus
				var currentIndex = Array.from(mioArray).indexOf(inputInFocus);

				// Calcola l'indice dell'elemento input successivo o precedente
				var nextIndex = event.key === "ArrowDown" ? currentIndex + 1
						: currentIndex - 1;

				// Assicurati che l'indice rimanga all'interno dei limiti dell'array
				nextIndex = Math.max(0, Math
						.min(nextIndex, mioArray.length - 1));

				// Sposta il focus all'elemento input successivo o precedente
				mioArray[nextIndex].focus();
			}
		});

		//FUNZIONE PER CONTROLLARE SE I DATI SONO CORRETTI E CHE NON CI SIA NEMMENO 1 CAMPO VUOTO
		function controllaPrima(event) {
			var password = document.getElementById('password').value;
			var confermaPassword = document.getElementById('confermaPassword').value;
			var username = document.getElementById('username').value;
			var email = document.getElementById('email').value;
			document.getElementById('messaggio1').innerText = '';
			document.getElementById('messaggio2').innerText = '';

			//SE ALMENO 1 CAMPO NON è STATO COMPILATO E LA PASSWORD NON COINCIDE MOSTRA ENTRAMBI GLI ERRORI
			if ((username === '' || email === '' || password === '' || confermaPassword === '')
					&& (password !== confermaPassword)) {

				var messaggio2 = document.getElementById('messaggio2');
				var messaggio1 = document.getElementById('messaggio1');
				messaggio1.innerText = 'Compila tutti i campi prima di procedere.';
				messaggio2.innerText = 'Le password non sono identiche. Correggi e riprova.';

				//ALTRIMENTI SE ALMENO 1 CAMPO NON COINCIDE MOSTRA L'ERRORE PER I CAMPI
			} else if (username === '' || email === '' || password === ''
					|| confermaPassword === '') {

				var messaggio1 = document.getElementById('messaggio1');
				messaggio1.innerText = 'Compila tutti i campi prima di procedere.';
				//ALTRIMENTI SE LA PASSWORD NON COINCIDE MOSTRA L'ERRORE PER LA PASSWORD   
			} else if (password !== confermaPassword) {

				var messaggio2 = document.getElementById('messaggio2');
				messaggio2.innerText = 'Le password non sono identiche. Correggi e riprova.';
				//ALTRIMENTI SIGNIFICA CHE è TUTTO GIUSTO E ALLORA LA PAGINA CAMBIA MOSTRANDO L'ALTRA FORM E IMPOSTA IL FOCUS SUL PROSSIMO INPUT
			} else {
				document.getElementById('meta1').style.display = 'none';
				document.getElementById('controllaPrima').style.display = 'none';
				document.getElementById('meta2').style.display = 'block';
				document.getElementById('submitButton').style.display = 'block';
				document.getElementById('nome').focus();
			}
		}

		//FUNZIONE CHE FA LA STESSA COSA DI SOPRA PERò CONTROLLA SOLO SE TUTTI I CAMPI SONO STATI INSERITI, SE è TUTTO GIUSTO QUESTA VOLTA FA LA SUBMIT DELLA FORM INVIANDO TUTTI
		// I DATI COMPRESI QUELLI PRECEDENTI
		function controllaSeconda(event) {
			var myForm = document.getElementById('myForm');
			var nome = document.getElementById('nome').value;
			var cognome = document.getElementById('cognome').value;
			var nascita = document.getElementById('nascita').value;
			var telefono = document.getElementById('telefono').value;

			event.preventDefault();
			if (nome === '' || cognome === '' || nascita === '' || telefono === '') {
				console.log(nascita);
				console.log(nome);
				console.log(cognome);
				console.log(telefono);
				var messaggio1 = document.getElementById('messaggio1');
				messaggio1.innerText = 'Compila tutti i campi prima di procedere.';
			} else {
				myForm.submit();
			}
		}
	</script>
</body>
</html>