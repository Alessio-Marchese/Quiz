package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.UtenteRepository;
import it.generationitaly.quizapp.repository.impl.UtenteRepositoryImpl;

@WebServlet("/deleteUtente")
public class DeleteUtenteServlet extends HttpServlet {

	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// Controllo se l'utente è loggato
		HttpSession session = request.getSession();
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
			return;
		}

		// Otteniamo l'oggetto attraverso la sessione e tramite il CAST
		Utente utente = (Utente) session.getAttribute("utente");
		
		// Cancelliamo l'utente
		utenteRepository.delete(utente);
		
		// Rimando alla pagina di login
		response.sendRedirect("login.jsp");

	}

}
