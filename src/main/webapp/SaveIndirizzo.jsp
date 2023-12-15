<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserisci Indirizzo e Telefono</title>
<link href="login-style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="login-box">
  <h2>Inserisci Indirizzo e Telefono</h2>
  <form action="saveAddress" method="post">
    <div class="user-box">
      <input type="text" name="paese" required="">
      <label>Paese</label>
    </div>
    <div class="user-box">
      <input type="text" name="citta" required="">
      <label>Città</label>
    </div>
    <div class="user-box">
      <input type="text" name="via" required="">
      <label>Via</label>
    </div>
    <div class="user-box">
      <input type="text" name="numeroCivico" required="">
      <label>Numero Civico</label>
    </div>
    <div class="user-box">
      <input type="tel" name="numeroTelefono" required="">
      <label>Numero di Telefono</label>
    </div>
    <button type="submit" class="login-button">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Salva
    </button>
  </form>
</div>
</body>
</html>
