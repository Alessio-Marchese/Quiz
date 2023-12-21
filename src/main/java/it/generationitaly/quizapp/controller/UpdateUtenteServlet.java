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

@WebServlet("/update-persona")
public class UpdateUtenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Creo un oggetto utenteRepository
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// prendo l'id dalla mia classe Utente (entity)
		int id = Integer.parseInt(request.getParameter("id"));

		// cerco nella UtenteRepository l'entità dell'utente associata all'ID
		// specificato e restituisce quell'istanza dell'oggetto Utente
		Utente utente = utenteRepository.findById(id);

		// Questo passaggio consente di trasferire l'oggetto Utente alla pagina JSP in
		// modo che possa essere utilizzato o visualizzato all'interno della pagina JSP.
		request.setAttribute("utente", utente);

		// Questa riga di codice permette la richiesta e la risposta alla pagina JSP
		// "form-update-utente.jsp"
		request.getRequestDispatcher("form-update-utente.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		Utente utente = utenteRepository.findById(id);

		// Prendo tutti i miei attributi dalla mia classe entity per poter procedere
		// alla
		// modifica
		if (utente != null) {
			utente.setUsername(request.getParameter("username"));
			utente.setPassword(request.getParameter("password"));
			utente.setEmail(request.getParameter("email"));
			utente.setNome(request.getParameter("nome"));
			utente.setCognome(request.getParameter("cognome"));

			int tel = Integer.parseInt(request.getParameter("numeroTelefono"));
			utente.setNumeroTelefono(tel);

			String dataNascitaString = request.getParameter("dataNascita");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date dataNascita = null;
			try {
				dataNascita = sdf.parse(dataNascitaString);
			} catch (ParseException e) {
				e.getMessage();
			}
			utente.setDataNascita(dataNascita);

			if (utente.getIndirizzo() != null) {
				Indirizzo indirizzo = new Indirizzo();
				indirizzo.setPaese(request.getParameter("paese"));
				indirizzo.setCitta(request.getParameter("citta"));
				indirizzo.setVia(request.getParameter("via"));
				indirizzo.setNumeroCivico(request.getParameter("numeroCivico"));

				utente.setIndirizzo(indirizzo);
			}

		}

		// eseguo l'operazione di aggiornamento sull'oggetto utente
		utenteRepository.update(utente);

		// l'utente viene reindirizzato a un'altra pagina o risorsa chiamata "utenti"
		// mediante il metodo sendRedirect
		response.sendRedirect("utenti");

	}

}
