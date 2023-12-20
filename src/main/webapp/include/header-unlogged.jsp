<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"
    import="it.generationitaly.quizapp.entity.Linguaggio"
	import="java.util.List"
	import="it.generationitaly.quizapp.entity.Capitolo"
    %>
    
	<% List<Linguaggio> linguaggi = (List<Linguaggio>) request.getAttribute("linguaggi"); %>
    
<nav class="navbar navbar-expand-lg bg-body-tertiary">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="welcome">IMGLogo</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        <li class="nav-item">
		          <button id="linguaggi" class="btn btn-outline-primary">Linguaggi</button>
		        </li>
		        <li class="nav-item ml-3">
		          <button id="forum" class="btn btn-outline-primary">Forum</button>
		        </li>
		      </ul>
		      <a href="login.jsp" class="btn btn-primary mr-3">Accedi</a>
		      <a href="register.jsp" class="btn btn-primary">Registrati</a>
		    </div>
		  </div>
		</nav>
		
		 <div id="row" class="container-fluid" style="display: none; height: 90vh; width: 90vw; box-sizing: border-box; font-size: 14px; color: white;">
  			<div class="row justify-content-center mt-1 mb-3" style="width: 100%; height: 100%;">
  			<div class="col-1"></div>
  			<div class="col-3 mt-1 mb-3">
     				 <% for(Linguaggio linguaggio : linguaggi) { %>
     				 <%		if(!linguaggio.getNome().equals("Java") && !linguaggio.getNome().equals("MySQL")) {
     				 		continue;
     				 }
     				 %>
     				 <div style="height: 50%; margin: 5px; border: 3px solid black; border-radius: 10px; background-color: grey;">
     				 	<h1><%=linguaggio.getNome() %></h1>
     				 	<% for(Capitolo capitolo : linguaggio.getCapitoli()) { %>
     				 	<div><%= capitolo.getNome() %> <a href="teoria?idCapitolo=<%= capitolo.getId()%>">Teoria</a> <a href="quiz?idCapitolo=<%= capitolo.getId()%>">Quiz</a> <a href="#">Flashcards</a></div>
     				 </div>
     				 	<% } %>
     				 <% } %>
    			</div>
    			
    			<div class="col-3 mt-1 mb-3">
      				 <% for(Linguaggio linguaggio : linguaggi) { %>
     				 <%		if(!linguaggio.getNome().equals("HTML") && !linguaggio.getNome().equals("CSS")) {
     				 		continue;
     				 }
     				 %>
     				 <div style="height: 50%; margin: 5px; border: 3px solid black; border-radius: 10px; background-color: grey;">
     				 	<h1><%=linguaggio.getNome() %></h1>
     				 	<% for(Capitolo capitolo : linguaggio.getCapitoli()) { %>
     				 	<div><%= capitolo.getNome() %> <a href="teoria?idCapitolo=<%= capitolo.getId()%>">Teoria</a> <a href="quiz?idCapitolo=<%= capitolo.getId()%>">Quiz</a> <a href="#">Flashcards</a></div>
     				 </div>
     				 	<% } %>
     				 <% } %>
    			</div>
    			
    			<div class="col-3 mt-1 mb-3">
    				<% for(Linguaggio linguaggio : linguaggi) { %>
     				 <%		if(!linguaggio.getNome().equals("JavaScript") && !linguaggio.getNome().equals("Spring")) {
     				 		continue;
     				 }
     				 %>
     				 <div style="height: 50%; margin: 5px; border: 3px solid black; border-radius: 10px; background-color: grey;">
     				 	<h1><%=linguaggio.getNome() %></h1>
     				 	<% for(Capitolo capitolo : linguaggio.getCapitoli()) { %>
     				 	<div><%= capitolo.getNome() %> <a href="teoria?idCapitolo=<%= capitolo.getId()%>">Teoria</a> <a href="quiz?idCapitolo=<%= capitolo.getId()%>">Quiz</a> <a href="#">Flashcards</a></div>
     				 </div>
     				 	<% } %>
     				 <% } %>
				</div>
				<div class="col-1"></div>
  					</div>
  				</div>		
		    <script>
    	document.getElementById("linguaggi").addEventListener('click', mostraTendinaLinguaggi);
    	
    	function mostraTendinaLinguaggi(event) {
    		var elRow = document.getElementById("row");
    		var elPagina = document.getElementById("pagina");
    		var elBody = document.getElementById("body");
    		if(elRow.style.display === "none") {
    			elPagina.style.display = 'none';
        		elRow.style.display = 'flex';
        		elBody.style.backgroundColor = "grey";
    		} else {
    			elBody.style.backgroundColor = "white";
    			elPagina.style.display = 'block';
    			elRow.style.display = 'none';
    		}
    		
    	}
    </script>