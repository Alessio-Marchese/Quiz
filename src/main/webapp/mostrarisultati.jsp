<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% int idCapitolo = Integer.parseInt(request.getParameter("idCapitolo"));
	%>
	<h1>complimenti hai finito il quiz</h1>
	<a href="quiz?idCapitolo=<%=idCapitolo%>">torna al quiz</a>
</body>
</html>