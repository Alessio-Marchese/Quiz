<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="style/login-style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="login-box">
  <h2>Register</h2>
  <form id="myForm" action="register-2.jsp" method="post">
    <div class="user-box">
      <input type="text" name="username" required="">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input id="password" type="password" name="password" required="">
      <label>Password</label>
    </div>
    <div class="user-box">
      <input id="confermaPassword" type="password" name="confermaPassword" required="">
      <label>Conferma password</label>
    </div>
    <div class="user-box">
      <input type="text" name="email" required="">
      <label>Email</label>
    </div>
    <div class="user-box">
    	<span style="color: red;" id="messaggio"></span>
    </div>
    <button id="submitButton" type="submit" class="login-button">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      CONTINUA
    </button>
  </form>
</div>
<script>
document.getElementById('myForm').addEventListener('submit', gestisciSubmit);

	function gestisciSubmit(event) {
		
		// Ottenere i valori degli input
		var password = document.getElementById('password').value;
		var confermaPassword = document.getElementById('confermaPassword').value;
		
		// Se le password non sono identiche
		  if (password !== confermaPassword) {
		    // Impedire l'invio del form
		    event.preventDefault();
		    
		 // Aggiorna il messaggio nella casella del messaggio
		    var messaggio = document.getElementById('messaggio');
		    messaggio.innerText = 'Le password non sono identiche. Correggi e riprova.';
		  }
	}
</script>
</body>
</html>