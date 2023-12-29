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

@WebServlet("/updateUtente")
public class UpdateUtenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Utente utente = (Utente) request.getSession().getAttribute("utente");
		int tel = Integer.parseInt(request.getParameter("newNumeroTelefono"));
		if (!request.getParameter("newUsername").equals(utente.getUsername())
				&& utenteRepository.findByUsername(request.getParameter("newUsername")) != null) {
			response.sendRedirect("profilo?erroreUsername");
			return;
		} else if (!request.getParameter("newEmail").equals(utente.getEmail())
				&& utenteRepository.findByEmail(request.getParameter("email")) != null) {
			response.sendRedirect("profilo?erroreEmail");
			return;
		} else if (tel != utente.getNumeroTelefono() && utenteRepository.findByNumeroTelefono(tel) != null) {
			response.sendRedirect("profilo?erroreNumero");
			return;
		}

		utente.setUsername(request.getParameter("newUsername"));
		utente.setEmail(request.getParameter("newEmail"));
		utente.setNome(request.getParameter("newNome"));
		utente.setCognome(request.getParameter("newCognome"));
		utente.setNumeroTelefono(tel);
		
		if(request.getParameter("newPaese") != null) {
			Indirizzo indirizzo = null;
			if(utente.getIndirizzo() != null) {
				indirizzo = utente.getIndirizzo();
			} else {
				indirizzo = new Indirizzo();
			}
			indirizzo.setPaese(request.getParameter("newPaese"));
			indirizzo.setCitta(request.getParameter("newCitta"));
			indirizzo.setVia(request.getParameter("newVia"));
			indirizzo.setNumeroCivico(request.getParameter("newNumeroCivico"));
			utente.setIndirizzo(indirizzo);
		}
			

		String dataNascitaString = request.getParameter("newDataNascita");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dataNascita = null;
		try {
			dataNascita = sdf.parse(dataNascitaString);
		} catch (ParseException e) {
			e.getMessage();
		}
		utente.setDataNascita(dataNascita);

		// eseguo l'operazione di aggiornamento sull'oggetto utente
		utenteRepository.update(utente);

		// l'utente viene reindirizzato a un'altra pagina o risorsa chiamata "utenti"
		// mediante il metodo sendRedirect
		response.sendRedirect("profilo");

	}

}
