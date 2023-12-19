<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="it.generationitaly.quizapp.entity.Utente"
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
<% Utente utente = (Utente) session.getAttribute("utente"); %>
		<% if(utente == null) { %>
			<%@ include file="header-unlogged.jsp" %>
	    <% } else { %>
			<%@ include file="header-logged.jsp" %>
		<% } %>
<div id="welcome">
<h1>Il tuo profilo</h1>
<div class="div-1">
<div class="container emp-profile">
            <form method="post">
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
                                        GetNome GetCognome
                                    </h5>
                                    <p class="proile-rating">BADGE<span>0/3</span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Info</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                    </div>
                </div>
               
                <div class="row">
                    <div class="col-md-4">
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>GetUser</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nome</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>GetNome</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>GetEmail</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Telefono</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>GetTelefono</p>
                                            </div>
                                        </div>
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
                    </form> 
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
<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>