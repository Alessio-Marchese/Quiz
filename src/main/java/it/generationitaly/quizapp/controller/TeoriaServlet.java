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
import it.generationitaly.quizapp.repository.CapitoloRepository;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import it.generationitaly.quizapp.repository.impl.CapitoloRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.LinguaggioRepositoryImpl;

@WebServlet("/teoria")
public class TeoriaServlet extends HttpServlet {

	CapitoloRepository capitoloRepo = new CapitoloRepositoryImpl();
	LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idCapitolo = Integer.parseInt(request.getParameter("idCapitolo"));
		Capitolo capitolo = capitoloRepo.findById(idCapitolo);
		List<Contenuto> contenuti = capitolo.getContenuto();
		List<Linguaggio> linguaggi = linguaggioRepo.findAll();
		request.setAttribute("contenuti", contenuti);
		request.setAttribute("linguaggi", linguaggi);
		request.getRequestDispatcher("teoria.jsp").forward(request, response);
		
	}
}
