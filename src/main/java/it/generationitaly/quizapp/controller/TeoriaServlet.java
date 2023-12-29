package it.generationitaly.quizapp.controller;

import java.io.IOException;
import java.util.List;

import it.generationitaly.quizapp.entity.Capitolo;
import it.generationitaly.quizapp.entity.Contenuto;
import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.repository.CapitoloRepository;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import it.generationitaly.quizapp.repository.impl.CapitoloRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.LinguaggioRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/teoria")
public class TeoriaServlet extends HttpServlet {

	CapitoloRepository capitoloRepo = new CapitoloRepositoryImpl();
	LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Capitolo capitolo = null;
		int idCapitolo = -1;
		int idLinguaggio = Integer.parseInt(request.getParameter("idLinguaggio"));
		if(request.getParameter("idCapitolo") != null) {
			idCapitolo = Integer.parseInt(request.getParameter("idCapitolo"));
		}
		
		Linguaggio linguaggio = linguaggioRepo.findById(idLinguaggio);
		if(idCapitolo > 0) {
			capitolo = capitoloRepo.findById(idCapitolo);
		} else {
			capitolo = linguaggio.getCapitoli().get(0);
		}
		List<Contenuto> contenuti = capitolo.getContenuti();
		List<Capitolo> capitoli = linguaggio.getCapitoli();
		request.setAttribute("capitoli", capitoli);
		request.setAttribute("contenuti", contenuti);
		request.setAttribute("capitolo", capitolo);
		request.setAttribute("linguaggio", linguaggio);
		request.getRequestDispatcher("teoria.jsp").forward(request, response);

	}
}
