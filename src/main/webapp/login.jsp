<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="style/login-style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="login-box">
  <h2>Login</h2>
  <form action="login" method="post">
    <div class="user-box">
      <input type="text" name="username" required="">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="password" required="">
      <label>Password</label>
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