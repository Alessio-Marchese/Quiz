<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<a href="quizmultiplo?idCapitolo=<%=idCapitolo%>">torna al quiz</a>
</body>
</html>