package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.Session;

import it.generationitaly.quizapp.entity.Indirizzo;
import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.UtenteRepository;
import it.generationitaly.quizapp.repository.impl.UtenteRepositoryImpl;

@WebServlet("/updateUtenteIndirizzo")
public class UpdateUtenteIndirizzoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Creo un oggetto utenteRepository
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	// dichiaro la variabile id che mi servirà nei due metodi DoGet e DoPost
	int id;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Controllo se l'utente è loggato
		HttpSession session = request.getSession();
		if (session.getAttribute("username").equals(null)) {
			response.sendRedirect("login.jsp");
			return;
		}

		// Otteniamo l'oggetto attraverso la sessione e tramite il CAST
		Utente utente = (Utente) session.getAttribute("utente");

		// Questo passaggio consente di trasferire l'oggetto Utente alla pagina JSP in
		// modo che possa essere utilizzato o visualizzato all'interno della pagina JSP.
		request.setAttribute("utente", utente);

		// Questa riga di codice permette la richiesta e la risposta alla pagina JSP
		// "form-update-utente.jsp"
		request.getRequestDispatcher("form-update-utente.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Controllo se l'utente è loggato
		HttpSession session = request.getSession();
		if (session.getAttribute("username").equals(null)) {
			response.sendRedirect("login.jsp");
			return;
		}

		// Otteniamo l'oggetto attraverso la sessione e tramite il CAST
		Utente utente = (Utente) session.getAttribute("utente");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirm_password");
		String email = request.getParameter("email");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		int tel = Integer.parseInt(request.getParameter("numeroTelefono"));
		String dataNascitaString = request.getParameter("dataNascita");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dataNascita = null;
		try {
			dataNascita = sdf.parse(dataNascitaString);
		} catch (ParseException e) {
			e.getMessage();
		}

		String paese = request.getParameter("paese");
		String citta = request.getParameter("citta");
		String via = request.getParameter("via");
		String numeroCivico = request.getParameter("numeroCivico");

		// Prendo tutti i miei attributi dalla mia classe entity per poter procedere
		// alla
		// modifica

		utente.setUsername(username);
		utente.setPassword(password);
		utente.setEmail(email);
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setNumeroTelefono(tel);
		utente.setDataNascita(dataNascita);

		Indirizzo indirizzo = new Indirizzo();
		indirizzo.setPaese(paese);
		indirizzo.setCitta(citta);
		indirizzo.setVia(via);
		indirizzo.setNumeroCivico(numeroCivico);

		utente.setIndirizzo(indirizzo);

		// eseguo l'operazione di aggiornamento sull'oggetto utente
		utenteRepository.update(utente);

		// l'utente viene reindirizzato a un'altra pagina o risorsa chiamata "utenti"
		// mediante il metodo sendRedirect
		response.sendRedirect("utente.jsp");

	}

}
