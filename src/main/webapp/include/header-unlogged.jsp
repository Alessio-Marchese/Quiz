<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
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
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="javateoria.jsp">JAVA</a></li>
            <li><a class="dropdown-item" href="htmlteoria.jsp">HTML</a></li>
            <li><a class="dropdown-item" href="cssteoria.jsp">CSS</a></li>
            <li><a class="dropdown-item" href="javascriptteoria.jsp">JAVASCRIPT</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Quiz
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Quiz scelta multipla</a></li>
            <li><a class="dropdown-item" href="#">Quiz vero o falso</a></li>
            <li><a class="dropdown-item" href="#">FlashCards</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Utente
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="register.jsp">Registrati</a></li>
            <li><a class="dropdown-item" href="login.jsp">Login</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Cerca</button>
      </form>
    </div>
  </div>
</nav>
