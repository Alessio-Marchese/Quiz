package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.quizapp.entity.Capitolo;
import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import it.generationitaly.quizapp.repository.impl.LinguaggioRepositoryImpl;

@WebServlet("/listaQuiz")
public class ListaQuizServlet extends HttpServlet {

	private LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Linguaggio linguaggio = linguaggioRepo.findById(id);
		List<Capitolo> capitoli = linguaggio.getCapitoli();
		request.setAttribute("capitoli", capitoli);
		request.setAttribute("linguaggio", linguaggio);
		request.getRequestDispatcher("quiz.jsp").forward(request, response);
	}
}
