<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="it.generationitaly.quizapp.entity.Utente"
    import="it.generationitaly.quizapp.entity.Badge"
    import="java.util.List"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="style/column.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body id="body">
<% 
	List<Badge> badges = (List<Badge>) request.getAttribute("badges");
%>
<%@ include file="include/header.jsp" %>
<div id="welcome">
<h1>Il tuo profilo</h1>
<div class="div-1">
<div class="container emp-profile">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Carica foto
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <%= utente.getNome() %> <%= utente.getCognome() %>
                                    </h5>
                                    <%  %>
                                    <% int badgeOttenuti = utente.getBadges().size(); %>
                                    <% int badgeTotali = badges.size(); %>
                                    <p class="proile-rating">BADGE<span><%=badgeOttenuti %>/<%=badgeTotali %></span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Info</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="col-md-2">
                        <input id="edit" type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                    </div>
                </div>
               
                <div class="row">
                    <div class="col-md-4">
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            		<form action="login.js" method="get">
                            		<h2 style="display: none; margin-left: 300px;" id="titolo">MODIFICA PROFILO</h2>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User</label>
                                            </div>
                                            <div id="username" class="col-md-6">
                                                <p><%=utente.getUsername() %></p>
                                            </div>
                                            <div id="modificaUsername" class="col-md-6" style="display: none; width: auto;">
                                            	<input name="newUsername" value="<%=utente.getUsername()%>">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nome</label>
                                            </div>
                                            <div id="nome" class="col-md-6">
                                                <p><%=utente.getNome() %></p>
                                            </div>
                                            <div id="modificaNome" class="col-md-6" style="display: none; width: auto;">
                                            	<input name="newNome" value="<%=utente.getNome()%>">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Cognome</label>
                                            </div>
                                            <div id="cognome" class="col-md-6">
                                                <p><%=utente.getCognome()%></p>
                                            </div>
                                            <div id="modificaCognome" class="col-md-6" style="display: none; width: auto;">
                                            	<input name="newCognome" value="<%=utente.getCognome()%>">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div id="email" class="col-md-6">
                                                <p><%=utente.getEmail() %></p>
                                            </div>
                                            <div id="modificaEmail" class="col-md-6" style="display: none; width: auto;">
                                            	<input name="newEmail" value="<%=utente.getEmail()%>">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Telefono</label>
                                            </div>
                                            <div id="numeroTelefono" class="col-md-6">
                                            	<% if(utente.getNumeroTelefono() == null) { %>
                                            		<button type="button" id="showForm">Aggiungi</button>
                                            		<div id="divAsForm" style="display: none;">
                                            			<input id="number" type="number">
                                            			<button id="submit" type="button" style="margin-left: 10px;">click</button>
                                            		</div>
                                            	<% } else {%>
                                                <p><%=utente.getNumeroTelefono() %></p>
                                                <% } %>
                                            </div>
                                            <div id="modificaNumeroTelefono" class="col-md-6" style="display: none; width: auto;">
                                            	<input id="myInput2" name="newNumeroTelefono" value="<%=utente.getNumeroTelefono()%>">
                                            </div>
                                        </div>
                                        <div class="row">
                                        <div class="col-md-6">
                                        </div>
                                        	<div class="col-md-6">
                                        <button id="submitBtn" type="submit" style="display: none;">CONFERMA</button>
                                        	</div>
                                        </div>
                                       </form>
                                        <form id="myForm" action="login.jsp" method="get">
                                        <input id="myInput" type="hidden" value="" name="numeroTelefono">
                                        </form>
                                        <script>
                                        	document.getElementById("showForm").addEventListener('click', mostraForm)
                                        	document.getElementById("submit").addEventListener('click', mandaForm)
                                        	
                                        	var button = document.getElementById("edit");
											button.addEventListener('click', mostraFormEdit);
                                        	
                                        	function mostraFormEdit(event) {
                                        		var submitBtn = document.getElementById("submitBtn");
											    var button = document.getElementById("edit");
											    var titolo = document.getElementById("titolo");
											    var username = document.getElementById("username");
											    var modificaUsername = document.getElementById("modificaUsername");
											    var nome = document.getElementById("nome");
											    var modificaNome = document.getElementById("modificaNome");
											    var cognome = document.getElementById("cognome");
											    var modificaCognome = document.getElementById("modificaCognome");
											    var email = document.getElementById("email");
											    var modificaEmail = document.getElementById("modificaEmail");
											    var numeroTelefono = document.getElementById("numeroTelefono");
											    var modificaNumeroTelefono = document.getElementById("modificaNumeroTelefono");
											
											    if (button.value !== "Annulla") {
											        titolo.style.display = 'block';
											        button.value = "Annulla";
											        username.style.display = 'none';
											        modificaUsername.style.display = 'block';
											        nome.style.display = 'none';
											        modificaNome.style.display = 'block';
											        cognome.style.display = 'none';
											        modificaCognome.style.display = 'block';
											        email.style.display = 'none';
											        modificaEmail.style.display = 'block';
											        numeroTelefono.style.display = 'none';
											        submitBtn.style.display = 'block';
											        if (myInput2.value !== 'null') {
											            modificaNumeroTelefono.style.display = 'block';
											        }
											
											    } else {
											        titolo.style.display = 'none';
											        button.value = "Edit Profile";
											        username.style.display = 'block';
											        modificaUsername.style.display = 'none';
											        nome.style.display = 'block';
											        modificaNome.style.display = 'none';
											        cognome.style.display = 'block';
											        modificaCognome.style.display = 'none';
											        email.style.display = 'block';
											        modificaEmail.style.display = 'none';
											        numeroTelefono.style.display = 'block';
											        submitBtn.style.display = 'none';
											    }
											}
											
											

                                        	
                                        	function mandaForm(event) {
                                        		var elNumber = document.getElementById('number');
                                        		var elMyForm = document.getElementById('myForm');
                                        		var elMyInput = document.getElementById('myInput');
                                        		
                                        		var numero = elNumber.value;
                                        		myInput.value = numero;
                                        		myForm.submit();
                                        		
                                        	}
                                        	
                                        	function mostraForm(event) {
                                        		var elDiv = document.getElementById('divAsForm');
                                        		var elButton = document.getElementById('showForm');
                                        		elDiv.style.display = 'block';
                                        		elButton.style.display = 'none';
                                        		
                                        	}
                                        </script>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>230</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 months</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>       
        </div>
<h1>Inizia il tuo percorso di studio!</h1>
<div class="div-1">
 <div class="container">
    <ul class="cards">
      <li class="card">
        <div>
          <div class="row">
            <div class="column"> <img class="icon" src="https://cdn-icons-png.flaticon.com/512/5968/5968282.png" alt=""> </div>
            <div class="column">
              <h3 class="card-title"><b>JAVA</b></h3>
            </div>
          </div>
          <div class="card-content">
            <p>Java è un linguaggio di programmazione versatile e orientato agli oggetti, apprezzato per la sua portabilità e affidabilità. È utilizzato per creare applicazioni web, software per dispositivi mobili e sistemi embedded. La sua sintassi è simile a C++, ma con un focus sulla gestione semplificata della memoria e sulla capacità di eseguire codice su diverse piattaforme senza modifiche.</p>
          </div>
        </div>
        <div class="card-link-wrapper">
          <a href="" class="wp-block-button__link has-base-color has-text-color has-text-align-center wp-element-button card-link">Inizia</a>
        </div>
      </li>
      <li class="card">
        <div>
          <div class="row">
            <div class="column"> <img class="icon" src="https://icons.veryicon.com/png/o/business/vscode-program-item-icon/javascript-3.png" alt=""> </div>
            <div class="column">
              <h3 class="card-title"><b>JAVASCRIPT</b></h3>
            </div>
          </div>
          <div class="card-content">
            <p>JavaScript è un linguaggio di programmazione adatto per la creazione di siti web interattivi e dinamici. Utilizzato principalmente per aggiungere comportamenti e funzionalità agli elementi HTML, è eseguito lato client nel browser degli utenti. È versatile, supporta la programmazione ad eventi e offre librerie e framework per lo sviluppo web moderno.</p>
          </div>
        </div>
        <br>
        <div class="card-link-wrapper">
          <a href="" class="wp-block-button__link has-base-color has-text-color has-text-align-center wp-element-button card-link">Inizia</a>
        </div>
      </li>
      <li class="card">
        <div>
          <div class="row">
            <div class="column"> <img class="icon" src="https://cdn-icons-png.flaticon.com/512/5968/5968242.png" alt=""> </div>
            <div class="column">
              <h3 class="card-title"><b>CSS</b></h3>
            </div>
          </div>
          <div class="card-content">
            <p>CSS, acronimo di Cascading Style Sheets, è un linguaggio usato per definire la presentazione e l'aspetto visuale di un sito web. Si occupa di formattare l'aspetto degli elementi HTML, consentendo di modificare colori, layout, dimensioni e stili di testo per creare un'esperienza visiva gradevole e coerente sul web.</p>
          </div>
        </div>
        <br>
        <div class="card-link-wrapper">
          <a href="" class="wp-block-button__link has-base-color has-text-color has-text-align-center wp-element-button card-link">Inizia</a>
        </div>
      </li>
    </ul>
    </div>
  
<h1>Ti senti pronto? Prova i nostri Quiz!</h1>
</div>
<div class="div-2">
  <div class="container">
    <ul class="cards">
      <li class="card">
        <div>
          <div class="row">
            <div class="column"> <img class="icon" src="https://cdn-icons-png.flaticon.com/512/5968/5968282.png" alt=""> </div>
            <div class="column">
              <h3 class="card-title"><b>JAVA</b></h3>
            </div>
          </div>
          <div class="card-content">
            <p></p>
          </div>
        </div>
         <br>
        <div class="card-link-wrapper">
          <a href="" class="wp-block-button__link has-base-color has-text-color has-text-align-center wp-element-button card-link">Quiz Scelta Multipla</a>
          <a href="" class="wp-block-button__link has-base-color has-text-color has-text-align-center wp-element-button card-link">Quiz Vero o Falso</a>
        </div>
      </li>
      <li class="card">
        <div>
          <div class="row">
            <div class="column"> <img class="icon" src="https://icons.veryicon.com/png/o/business/vscode-program-item-icon/javascript-3.png" alt=""> </div>
            <div class="column">
              <h3 class="card-title"><b>JAVASCRIPT</b></h3>
            </div>
          </div>
          <div class="card-content">
            <p></p>
          </div>
        </div>
        <br>
        <div class="card-link-wrapper">
          <a href="" class="wp-block-button__link has-base-color has-text-color has-text-align-center wp-element-button card-link">Quiz Scelta Multipla</a>
          <a href="" class="wp-block-button__link has-base-color has-text-color has-text-align-center wp-element-button card-link">Quiz Vero o Falso</a>
        </div>
      </li>
      <li class="card">
        <div>
          <div class="row">
            <div class="column"> <img class="icon" src="https://cdn-icons-png.flaticon.com/512/5968/5968242.png" alt=""> </div>
            <div class="column">
              <h3 class="card-title"><b>CSS</b></h3>
            </div>
          </div>
          <div class="card-content">
            <p></p>
          </div>
        </div>
        <br>
        <div class="card-link-wrapper">
          <a href="" class="wp-block-button__link has-base-color has-text-color has-text-align-center wp-element-button card-link">Quiz Scelta Multipla</a>
          <a href="" class="wp-block-button__link has-base-color has-text-color has-text-align-center wp-element-button card-link">Quiz Vero o Falso</a>
        </div>
      </li>
    </ul>
  </div>
</div>
</div>
<%@ include file="include/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>