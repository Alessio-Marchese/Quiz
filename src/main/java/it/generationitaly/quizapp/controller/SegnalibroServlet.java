package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.quizapp.entity.Capitolo;
import it.generationitaly.quizapp.entity.Contenuto;
import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.CapitoloRepository;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import it.generationitaly.quizapp.repository.UtenteRepository;
import it.generationitaly.quizapp.repository.impl.CapitoloRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.LinguaggioRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.UtenteRepositoryImpl;

@WebServlet("/segnalibro")
public class SegnalibroServlet extends HttpServlet {
	
	LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();
	UtenteRepository utenteRepo = new UtenteRepositoryImpl();
	CapitoloRepository capitoloRepo = new CapitoloRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int segnalibro = Integer.parseInt(request.getParameter("segnalibro"));
		int linguaggioId = Integer.parseInt(request.getParameter("linguaggioId"));
		Utente utente = (Utente) request.getSession().getAttribute("utente");
		utente.setSegnaLibro(segnalibro);
		utenteRepo.update(utente);
		request.getRequestDispatcher("teoria?idCapitolo="+segnalibro+"&idLinguaggio="+linguaggioId).forward(request, response);
	}
}