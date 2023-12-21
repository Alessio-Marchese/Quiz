<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="it.generationitaly.quizapp.entity.Utente"
    %>
    <%
	Utente utente = (Utente) session.getAttribute("utente");
	%>
		 <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">ICONA DA METTERE</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Teoria
          </a>
         <form>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="listaTeoria?id=1">JAVA</a></li>
            <li><a class="dropdown-item" href="listaTeoria?id=2">HTML</a></li>
            <li><a class="dropdown-item" href="listaTeoria?id=3">CSS</a></li>
            <li><a class="dropdown-item" href="listaTeoria?id=4">JAVASCRIPT</a></li>
          </ul>
         </form>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Quiz
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="listaQuiz?id=1">JAVA</a></li>
            <li><a class="dropdown-item" href="listaQuiz?id=2">HTML</a></li>
            <li><a class="dropdown-item" href="listaQuiz?id=3">CSS</a></li>
            <li><a class="dropdown-item" href="listaQuiz?id=4">JAVASCRIPT</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Utente
          </a>
          <%if (utente == null) { %>
          
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="profile-page.jsp">Pagina profilo</a></li>
            <li><a class="dropdown-item" href="#">Log Out</a></li>
          </ul>
        </li>
      </ul>
      <% } else {%>
      	<ul class="dropdown-menu">
            <li><a class="dropdown-item" href="register.jsp">Registrati</a></li>
            <li><a class="dropdown-item" href="login.jsp">Login</a></li>
          </ul>
        </li>
      </ul>
      <% } %>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Cerca</button>
      </form>
    </div>
  </div>
</nav>
<script>
 document.addEventListener('DOMContentLoaded', function () {
    	        var dropdownItems = document.querySelectorAll('.dropdown-item');

    	        dropdownItems.forEach(function (item) {
    	            item.addEventListener('click', function () {
    	                // Imposta il valore del campo nascosto nel form
    	                var valore = item.getAttribute('data-value');
    	                document.getElementById('myForm').action = valore;
    	                // Invia il modulo
    	                document.getElementById('myForm').submit();
    	            });
    	        });
    	    });
</script>