<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.List"
    import="java.text.SimpleDateFormat"
    import="it.generationitaly.quizapp.entity.Badge"
    import="it.generationitaly.quizapp.entity.Capitolo"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style/profiloStyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@400&display=swap">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body
	style="background-color: #24262b; font-family: 'Roboto Mono', monospace; color: white;">
	<%
	List<Badge> badges = (List<Badge>) request.getAttribute("badges");
	Long numeroQuiz = (Long) request.getAttribute("numeroQuiz");
	%>
	<%@ include file="include/header.jsp"%>
	<form action="updateUtente" method="post">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<h1 style="justify-content: center; margin-top: 52px; margin-bottom: 50px;">Ciao <%=utente.getNome() %>!</h1>
					<div class="card" style="border: 4px solid white; border-radius: 5px; border-color: #e91e63; background-color:  #24262b; color: white;">
  						<div class="card-header">
    					Riprendi da dove hai lasciato!
  						</div>
  						<div class="card-body" style="border: 3px solid black; border-radius: 10px;">
    						<p class="card-text text-wrap">Questo è il tuo hub personale, da qui puoi recuperare gli ultimi argomenti studiati o riprendere gli esercizi dall'ultimo quiz svolto</p>
    						<div class="d-flex justify-content-between">
    							<% Capitolo capitolo = (Capitolo) request.getAttribute("capitolo"); %>
    							<% if(capitolo == null) { %>
    								<a href="#" class="btn btn-danger">Non hai un segnalibro</a>
    							<% } else {%>
    								<a href="teoria?idCapitolo=<%=capitolo.getId() %>&idLinguaggio=<%=capitolo.getLinguaggio().getId() %>" class="btn btn-danger">Vai a <%=capitolo.getNome() %></a>
    							<% } %>
    							<%if(utente.getNextQuiz() == 0) { %>
    							<a href="#" class="btn btn-danger">Non hai completato quiz</a>
    							<% } else { %>
    							<% Capitolo capitoloQuiz = (Capitolo) request.getAttribute("capitoloQuiz"); %>
    							<a href="quiz?idCapitolo=<%=capitoloQuiz.getId() %>&idLinguaggio=<%=capitoloQuiz.getLinguaggio().getId()%>" class="btn btn-danger">Quiz <%=capitoloQuiz.getNome() %></a>
    							<% } %>
  							</div>
  						</div>
					</div>
					<div class="card" style="margin-top: 20px; border: 4px solid white; border-radius: 5px; border-color: #e91e63; background-color:  #24262b; color: white;">
  						<div class="card-header">
    					I tuoi traguardi!
  						</div>
  						<div class="card-body" style="border: 3px solid black; border-radius: 10px;">
    						<div class="d-flex justify-content-between">
    						<% int badgeOttenuti = 0; %>
    							<% for(Badge badge : utente.getBadges()) { 
    								if(badge != null) {
    									badgeOttenuti++;
    								}
    							}
    							%>	
    							<% Integer contaQuiz = (Integer) request.getAttribute("contaQuiz"); %>
                                <% int badgeTotali = badges.size(); %>
    							<p>Quiz completati <%=contaQuiz == null ? 0 : contaQuiz%>/<%= numeroQuiz%></p>
    							<p>Badge ottenuti <%=badgeOttenuti %>/<%=badgeTotali %></p>
  							</div>
  						</div>
					</div>
				</div>

				<div class="col-md-6 col-sm-12" style="margin-top: 150px;">
					<div class="card"
						style=" border: 4px solid white; border-radius: 5px; border-color: #e91e63; background-color:  #24262b; color: white;">
						<div class="card-header">
							<div class="container">
								<div class="row">
									<div class="col-5">
										Le tue informazioni
										<h5 id="nomeCognome" style="display: block;"><%=utente.getNome()%>
											<%=utente.getCognome()%></h5>
										<div id="modificaNome" class="col-md-6"
											style="display: none; width: auto;">
											<input name="newNome" value="<%=utente.getNome()%>"
												placeholder="Nome">
										</div>
										<div id="modificaCognome" class="col-md-6"
											style="display: none; width: auto;">
											<input name="newCognome" value="<%=utente.getCognome()%>"
												placeholder="Cognome">
										</div>
									</div>
									<div class="col-4"></div>
									<div class="col-2">
										<input id="edit" type="button" class="btn btn-warning"
											value="Modifica" style="margin-top: 10px;">
									</div>
									<div class="col-1"></div>
								</div>
							</div>

						</div>
						<div class="card-body w-auto"
							style="border: 3px solid black; border-radius: 10px;">
							<div class="container">
								<div class="row">
									<div class="col-6">
										<p>Data nascita</p>
										<p>Email</p>
										<p>Telefono</p>
										<h5>Indirizzo</h5>
										<%
										if (utente.getIndirizzo() != null) {
										%>
										<p>Paese</p>
										<p>Citta</p>
										<p>Via</p>
										<p>Numero civico</p>
										<%
										} else {
										%>
										<div id="aggInd">
											<button class="btn btn-primary" type="button" id="showForm">Aggiungi</button>
											<div id="divAsForm" style="display: none;">
												<input id="paese" placeholder="Paese"><input
													id="citta" placeholder="Città"><input id="via"
													placeholder="Via"><input id="numeroCivico"
													placeholder="Numero Civico">
												<div class="d-flex justify-content-between">
													<button class="btn btn-secondary mt-2" type="button"
														id="annulla">Annulla</button>
													<button class="btn btn-secondary mt-2" id="submit"
														type="button">Aggiungi</button>
												</div>
											</div>
										</div>
										<%
										}
										%>
									</div>
									<div class="col-6">
										<p id="dataNascita"><%=new SimpleDateFormat("dd-MM-yyyy").format(utente.getDataNascita())%></p>
										<div id="modificaDataNascita" class="col-md-6"
											style="display: none; width: auto;">
											<input type="date" name="newDataNascita"
												value="<%=new SimpleDateFormat("yyyy-MM-dd").format(utente.getDataNascita())%>"
												placeholder="Email">
										</div>
										<p id="email"><%=utente.getEmail()%></p>
										<div id="modificaEmail" class="col-md-6"
											style="display: none; width: auto; margin-top: 15px;">
											<input name="newEmail" value="<%=utente.getEmail()%>"
												placeholder="Email">
										</div>
										<p id="numeroTelefono"><%=utente.getNumeroTelefono()%></p>
										<div id="modificaNumeroTelefono" class="col-md-6"
											style="display: none; width: auto; margin-top: 15px;">
											<input name="newNumeroTelefono"
												value="<%=utente.getNumeroTelefono()%>"
												placeholder="Telefono">
										</div>
										<%
										if (utente.getIndirizzo() != null) {
										%>
										<h5 style="height: 25px;"></h5>
										<div id="indirizzo">
											<p><%=utente.getIndirizzo().getPaese()%></p>
											<p><%=utente.getIndirizzo().getCitta()%></p>
											<p><%=utente.getIndirizzo().getVia()%></p>
											<p><%=utente.getIndirizzo().getNumeroCivico()%></p>
										</div>
										<div id="modificaIndirizzo" style="display: none;">
											<input name="newPaese"
												value="<%=utente.getIndirizzo().getPaese()%>"
												placeholder="Paese"> <input
												style="margin-top: 15px;" name="newCitta"
												value="<%=utente.getIndirizzo().getCitta()%>"
												placeholder="Città"> <input
												style="margin-top: 15px;" name="newVia"
												value="<%=utente.getIndirizzo().getVia()%>"
												placeholder="Via"> <input style="margin-top: 15px;"
												name="newNumeroCivico"
												value="<%=utente.getIndirizzo().getNumeroCivico()%>"
												placeholder="Numero civico">
										</div>
										<%
										}
										%>
									</div>
								</div>
							</div>
							<button class="btn btn-danger" id="submitBtn" type="submit"
								style="display: none; margin-left: auto; margin-right: auto;">CONFERMA</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<form id="myForm" action="saveIndirizzo" method="post">
		<input id="myInput1" type="hidden" value="" name="paese"> <input
			id="myInput2" type="hidden" value="" name="citta"> <input
			id="myInput3" type="hidden" value="" name="via"> <input
			id="myInput4" type="hidden" value="" name="numeroCivico">
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script>
		if (document.getElementById("showForm") !== null) {
			document.getElementById("showForm").addEventListener('click',
					mostraForm)
		}
		if (document.getElementById("submit") !== null) {
			document.getElementById("submit").addEventListener('click',
					mandaForm)
		}
		if (document.getElementById("annulla") !== null) {
			document.getElementById("annulla").addEventListener('click',
					nascondiForm);
		}
		var button = document.getElementById("edit");
		button.addEventListener('click', mostraFormEdit)

		function mostraFormEdit(event) {
			var aggInd = document.getElementById("aggInd");
			var submitBtn = document.getElementById("submitBtn");
			var button = document.getElementById("edit");
			var nomeCognome = document.getElementById("nomeCognome");
			var modificaNome = document.getElementById("modificaNome");
			var modificaCognome = document.getElementById("modificaCognome");
			var email = document.getElementById("email");
			var modificaEmail = document.getElementById("modificaEmail");
			var numeroTelefono = document.getElementById("numeroTelefono");
			var modificaNumeroTelefono = document
					.getElementById("modificaNumeroTelefono");
			var indirizzo = document.getElementById("indirizzo");
			var modificaIndirizzo = document
					.getElementById("modificaIndirizzo");
			var dataNascita = document.getElementById("dataNascita");
			var modificaDataNascita = document
					.getElementById("modificaDataNascita");

			if (button.value !== "Annulla") {
				submitBtn.style.display = 'block';
				button.value = "Annulla";
				nomeCognome.style.display = 'none';
				modificaNome.style.display = 'block';
				modificaCognome.style.display = 'block';
				email.style.display = 'none';
				modificaEmail.style.display = 'block';
				numeroTelefono.style.display = 'none';
				modificaNumeroTelefono.style.display = 'block';
				dataNascita.style.display = 'none';
				modificaDataNascita.style.display = 'block';
				if (indirizzo !== null) {
					indirizzo.style.display = 'none';
				}
				if (modificaIndirizzo !== null) {
					modificaIndirizzo.style.display = 'block';
				}
			} else {
				submitBtn.style.display = 'none';
				button.value = "Modifica";
				nomeCognome.style.display = 'block';
				modificaNome.style.display = 'none';
				modificaCognome.style.display = 'none';
				email.style.display = 'block';
				modificaEmail.style.display = 'none';
				numeroTelefono.style.display = 'block';
				modificaNumeroTelefono.style.display = 'none';
				dataNascita.style.display = 'block';
				modificaDataNascita.style.display = 'none';
				if (indirizzo !== null) {
					indirizzo.style.display = 'block';
				}
				if (modificaIndirizzo !== null) {
					modificaIndirizzo.style.display = 'none';
				}
			}
		}

		function mandaForm(event) {
			var elPaese = document.getElementById("paese");
			var elCitta = document.getElementById("citta");
			var elVia = document.getElementById("via");
			var elNumeroCivico = document.getElementById("numeroCivico")
			var elMyForm = document.getElementById('myForm');
			var elMyInput1 = document.getElementById('myInput1');
			var elMyInput2 = document.getElementById('myInput2');
			var elMyInput3 = document.getElementById('myInput3');
			var elMyInput4 = document.getElementById('myInput4');

			var paese = elPaese.value;
			var citta = elCitta.value;
			var via = elVia.value;
			var numeroCivico = elNumeroCivico.value;
			elMyInput1.value = paese;
			elMyInput2.value = citta;
			elMyInput3.value = via;
			elMyInput4.value = numeroCivico;
			myForm.submit();

		}

		function mostraForm(event) {
			var elDiv = document.getElementById('divAsForm');
			var elButton = document.getElementById('showForm');
			elDiv.style.display = 'block';
			elButton.style.display = 'none';
		}

		function nascondiForm(event) {
			document.getElementById("divAsForm").style.display = 'none';
			document.getElementById("showForm").style.display = 'block';
		}
	</script>
</body>
<%@ include file="include/footer.jsp"%>
</html>