<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="style/login-style.css" rel="stylesheet" type="text/css">
</head>
<body>
<% String email = request.getParameter("email");
   String password = request.getParameter("password");
   String username = request.getParameter("username");
%>
<div class="login-box">
  <h2>Register</h2>
  <form action="register-2" method="post">
  	<input type="hidden" name="email" value="<%=email%>">
  	<input type="hidden" name="password" value="<%=password%>">
  	<input type="hidden" name="username" value="<%=username%>">
  	
    <div class="user-box">
      <input type="text" name="username" required="">
      <label>Nome</label>
    </div>
    <div class="user-box">
      <input type="password" name="password" required="">
      <label>Cognome</label>
    </div>
     <div class="user-box">  
      <br> 
      <input type="date" name="nascita" required="">
      <label>Data di nascita</label> 
    </div>
    <button type="submit" class="login-button">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Submit
    </button>
    <% 
        if (request.getParameter("errore") != null) {
    %>
        <div class="alert alert-danger mt-3" role="alert">Credenziali errate!</div>
    <%
        }
    %>
  </form>
</div>
</body>
</html>