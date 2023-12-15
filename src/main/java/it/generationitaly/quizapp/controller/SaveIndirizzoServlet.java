package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.http.HttpClient.Redirect;

import it.generationitaly.quizapp.entity.Indirizzo;
import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.UtenteRepository;
import it.generationitaly.quizapp.repository.impl.UtenteRepositoryImpl;

@WebServlet("/saveIndirizzo")
public class SaveIndirizzoServlet extends HttpServlet {
	
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl(getClass());

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// Controllo se l'utente è loggato
		HttpSession session = request.getSession();
		if(session.getAttribute("username").equals(null)) {
			response.sendRedirect("login.jsp");
			return;
		}
		
		// Otteniamo l'oggetto attraverso la sessione e tramite il CAST
		Utente utente = (Utente) session.getAttribute("utente");
		
		// Recupero dei dati dal form di registrazione INDIRIZZO
		String paese = request.getParameter("paese");
		String citta = request.getParameter("citta");
		String via = request.getParameter("via");
		String numeroCivico = request.getParameter("numeroCivico");

		// Creazione oggetto inidirzzo e settaggio parametri
		Indirizzo indirizzo = new Indirizzo();

		indirizzo.setCitta(citta);
		indirizzo.setPaese(paese);
		indirizzo.setVia(via);
		indirizzo.setNumeroCivico(numeroCivico);
		
		// Aggiornamento utente con il nuovo indirizzo
		utente.setIndirizzo(indirizzo);

		// Aggiornare il nuovo indirizzo nel database
		utenteRepository.update(utente);

		// reinidirzza l'utente sulla welcome page
		response.sendRedirect("PaginaProfilo.jsp");

	}

}
