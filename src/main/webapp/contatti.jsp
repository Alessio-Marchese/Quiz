<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contattaci</title>
<link href="style/contatti.css" rel="stylesheet" type="text/css">
<link rel="icon" href="https://i.ibb.co/1fCPvSh/QUIZ5.png" >
</head>
<body>
<div class="contact-box">
  <h2>Contattaci</h2>
  <form action="contattaci" method="post">
    <div class="user-box">
      <input id="inputName" type="text" name="nome" required="">
      <label>Nome</label>
    </div>
    <div class="user-box">
      <input id="inputEmail" type="email" name="email" required="">
      <label>Email</label>
    </div>
    <div class="user-box">
      <input id="inputPhone" type="tel" name="telefono" required="">
      <label>Telefono</label>
    </div>
    <div class="user-box">
      <select id="selectSubject" name="oggetto" required="">
        <option value="" disabled selected>Scegli un oggetto</option>
        <option value="supporto">Supporto tecnico</option>
        <option value="informazioni">Informazioni generali</option>
        <option value="altro">Altro</option>
      </select>
    </div>
    <div class="user-box">
      <textarea id="inputMessage" name="messaggio" required=""></textarea>
      <label>Messaggio</label>
    </div>
    <button type="submit" class="contact-button">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Invia
    </button>
  </form>
</div>
</body>
<script>
	document.getElementById("inputName").focus();
</script>
</html>
