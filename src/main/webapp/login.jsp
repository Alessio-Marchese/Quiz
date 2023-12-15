<<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="login-style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="login-box">
  <h2>Login</h2>
  <form action="login" method="post">
    <div class="user-box">
      <input type="text" name="" required="">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="" required="">
      <label>Password</label>
    </div>
    <a href="#">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Submit
    </a>
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