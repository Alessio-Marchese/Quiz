package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import it.generationitaly.quizapp.entity.Indirizzo;
import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.UtenteRepository;
import it.generationitaly.quizapp.repository.impl.UtenteRepositoryImpl;

@WebServlet("/saveUtente")
public class SaveUtenteServlet extends HttpServlet {

	private UtenteRepository utenteRepository = new UtenteRepositoryImpl(getClass());

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Recupero dei dati dal form di registrazione UTENTE
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirm_password");
		String email = request.getParameter("email");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		int numeroTelefono = Integer.parseInt(request.getParameter("numeroTelefono"));

		// Verifica che le due password coincidano
		if (!password.equals(confirmPassword)) {
			response.sendRedirect("register.jsp?errore");
			return;
		}

		// Cercare di trasformare la stringa della data di nascita in una data
		String tmpDataNascita = request.getParameter("dataNascita");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date dataNascita = null;
		try {
			dataNascita = simpleDateFormat.parse(tmpDataNascita);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

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
		utente.setNumeroTelefono(numeroTelefono);
		utente.setIndirizzo(indirizzo);
		
		//Salvare nuovo utente nel database
		utenteRepository.save(utente);
		
		//reinidirzza l'utente sulla welcome page
		response.sendRedirect("welcomeQuizApp.jsp");
	}

}