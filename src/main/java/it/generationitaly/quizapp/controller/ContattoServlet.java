package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import it.generationitaly.quizapp.entity.Contatto;
import it.generationitaly.quizapp.repository.ContattoRepository;
import it.generationitaly.quizapp.repository.impl.ContattoRepositoryImpl;

@WebServlet("/contattaci")
public class ContattoServlet extends HttpServlet {
	
	 ContattoRepository contattoRepository = new ContattoRepositoryImpl();
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		    String nome = request.getParameter("nome");
	        String email = request.getParameter("email");
	        String telefono = request.getParameter("telefono");
	        String oggetto = request.getParameter("oggetto");
	        String messaggio = request.getParameter("messaggio");


	        Contatto contatto = new Contatto();
	        contatto.setNome(nome);
	        contatto.setEmail(email);
	        contatto.setTelefono(telefono);
	        contatto.setOggetto(oggetto);
	        contatto.setMessaggio(messaggio);

	        contattoRepository.save(contatto); // Metodo per salvare il contatto nel database

	        response.sendRedirect("contattaciRingraziamenti.jsp"); // Reindirizzamento a una pagina di ringraziamento
	   
		
	}

}
