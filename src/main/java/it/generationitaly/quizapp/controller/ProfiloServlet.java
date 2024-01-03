package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.quizapp.entity.Badge;
import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.BadgeRepository;
import it.generationitaly.quizapp.repository.CapitoloRepository;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import it.generationitaly.quizapp.repository.QuizMultiploRepository;
import it.generationitaly.quizapp.repository.QuizVeroFalsoRepository;
import it.generationitaly.quizapp.repository.impl.BadgeRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.CapitoloRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.LinguaggioRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.QuizMultiploRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.QuizVeroFalsoRepositoryImpl;

@WebServlet("/profilo")
public class ProfiloServlet extends HttpServlet {
	
	LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();
	BadgeRepository badgeRepo = new BadgeRepositoryImpl();
	CapitoloRepository capitoloRepo = new CapitoloRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("utente") == null) {
			response.sendRedirect("welcome");
			return;
		}
		Utente utente = (Utente) request.getSession().getAttribute("utente");
		if(utente.getSegnaLibro() != null) {
			request.setAttribute("capitolo", capitoloRepo.findById(utente.getSegnaLibro()));
		}
		if(utente.getNextQuiz() > 0) {
			request.setAttribute("capitoloQuiz", capitoloRepo.findById(utente.getNextQuiz()));
		}
		int contaQuiz = 0;
		for(Object obj : utente.getQuiz()) {
			if(obj != null) {
				contaQuiz++;
			}
		}
		request.setAttribute("contaQuiz", contaQuiz);
		Long quiz = 0L;
		quiz += capitoloRepo.countCapitoli();
		List<Linguaggio> linguaggi = linguaggioRepo.findAll();
		List<Badge> badges = badgeRepo.findAll();
		request.setAttribute("numeroQuiz", quiz);
		request.setAttribute("linguaggi", linguaggi);
		request.setAttribute("badges", badges );
		request.getRequestDispatcher("profile-page.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("utente") == null) {
			response.sendRedirect("welcome");
			return;
		}
		Utente utente = (Utente) request.getSession().getAttribute("utente");
		if(utente.getSegnaLibro() != null) {
			request.setAttribute("capitolo", capitoloRepo.findById(utente.getSegnaLibro()));
		}
		if(utente.getNextQuiz() > 0) {
			request.setAttribute("capitoloQuiz", capitoloRepo.findById(utente.getNextQuiz()));
		}
		Long quiz = 0L;
		quiz += capitoloRepo.countCapitoli();
		List<Linguaggio> linguaggi = linguaggioRepo.findAll();
		List<Badge> badges = badgeRepo.findAll();
		request.setAttribute("numeroQuiz", quiz);
		request.setAttribute("linguaggi", linguaggi);
		request.setAttribute("badges", badges );
		request.getRequestDispatcher("profile-page.jsp").forward(request, response);
	}
}
