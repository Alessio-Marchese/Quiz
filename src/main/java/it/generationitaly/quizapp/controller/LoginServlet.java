package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.UtenteRepository;
import it.generationitaly.quizapp.repository.impl.UtenteRepositoryImpl;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
       
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl(Utente.class);

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Utente utente = utenteRepository.findByUsername(username);
		
		if (utente != null && utente.getPassword() == password) {
			
			HttpSession session = request.getSession();
			session.setAttribute("utenteId", utente.getId());
			session.setAttribute("username", utente.getUsername());
			
			response.sendRedirect("welcomeQuizApp.jsp");
			
		} else {
			response.sendRedirect("login.jsp?errore");
		}
		
	}

}
