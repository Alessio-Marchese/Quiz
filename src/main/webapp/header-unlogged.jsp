<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    
<nav class="navbar navbar-expand-lg bg-body-tertiary">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#">IMGLogo</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        <li class="nav-item">
		          <button id="linguaggi" class="btn btn-outline-primary">Linguaggi</button>
		        </li>
		        <li class="nav-item">
		          <button id="forum" class="btn btn-outline-primary">Forum</button>
		        </li>
		      </ul>
		      <button class="btn btn-primary" style="">Accedi</button>
		      <button class="btn btn-primary">Registrati</button>
		    </div>
		  </div>
		</nav>
		
		 <div id="row" class="container-fluid" style="display: none; height: 85vh; width: 100vw; box-sizing: border-box; font-size: 14px; color: white;">
  			<div class="row justify-content-center mt-3" style="width: 100%; height: 100%;">
  			<div class="col-1"></div>
  			<div class="col-2 mt-1 mb-1" style="border: 3px solid black; border-radius: 10px; background-color: grey;">
     				 <h1>Java</h1>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				<br><br>					
     				 <h1>MySQL</h1>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
    			</div>
    			<div class="col-1"></div>
    			<div class="col-2 mt-1 mb-1" style="border: 3px solid black; border-radius: 10px; background-color: grey;">
      				 <h1>CSS</h1>
      				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <br><br>
     				 <h1>Python</h1>
      				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
    			</div>
    			<div class="col-1"></div>
    			<div class="col-2 mt-1 mb-1" style="border: 3px solid black; border-radius: 10px; background-color: grey;">
    				<h1>JavaScript</h1>
      				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <br><br>
     				 <h1>C++</h1>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
     				 <div>Capitolo n <a href="#">Teoria</a> <a href="#">Quiz</a> <a href="#">Flashcards</a></div>
				</div>
				<div class="col-1"></div>
  					</div>
  				</div>		
		    <script>
    	document.getElementById("linguaggi").addEventListener('click', mostraTendinaLinguaggi);
    	
    	function mostraTendinaLinguaggi(event) {
    		var elRow = document.getElementById("row");
    		var elWelcome = document.getElementById("welcome");
    		var elBody = document.getElementById("body");
    		if(elRow.style.display === "none") {
    			elWelcome.style.display = 'none';
        		elRow.style.display = 'flex';
        		elBody.style.backgroundColor = "grey";
    		} else {
    			elBody.style.backgroundColor = "white";
    			elWelcome.style.display = 'flex';
    			elRow.style.display = 'none';
    		}
    		
    	}
    </script>