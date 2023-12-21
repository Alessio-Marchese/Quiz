package it.generationitaly.quizapp.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.UtenteRepository;
import it.generationitaly.quizapp.repository.impl.UtenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/saveUtente")
public class SaveUtenteServlet extends HttpServlet {

	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Recupero dei dati dal form di registrazione UTENTE
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confermaPassword");
		String email = request.getParameter("email");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");

		Utente utenteCheck = utenteRepository.findByUsername(username);
		
		// Verifica che le due password coincidano
		if (utenteCheck != null) {
			response.sendRedirect("register.jsp?errore");
			return;
		}

		// Cercare di trasformare la stringa della data di nascita in una data
		String tmpDataNascita = request.getParameter("nascita");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date dataNascita = null;
		try {
			dataNascita = simpleDateFormat.parse(tmpDataNascita);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Creazione oggetto utente e settaggio parametri
		Utente utente = new Utente();

		utente.setUsername(username);
		utente.setPassword(password);
		utente.setEmail(email);
		utente.setNome(nome);
		utente.setCognome(cognome);
		if (dataNascita != null) {
			utente.setDataNascita(dataNascita);
		}
		
		//Salvare nuovo utente nel database
		utenteRepository.save(utente);
		
		//reinidirzza l'utente sulla welcome page
		response.sendRedirect("profilo");
	}

}