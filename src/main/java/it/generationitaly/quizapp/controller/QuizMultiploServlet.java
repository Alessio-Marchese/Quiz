package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.quizapp.entity.QuizMultiplo;
import it.generationitaly.quizapp.repository.QuizMultiploRepository;
import it.generationitaly.quizapp.repository.impl.QuizMultiploRepositoryImpl;


public class QuizMultiploServlet extends HttpServlet {

	private QuizMultiploRepository quizRepository = new QuizMultiploRepositoryImpl(QuizMultiplo.class);
	
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		    // Ottieni tutte le domande di quiz
	        List<QuizMultiplo> quizList = quizRepository.findAll();

	        request.setAttribute("quizList", quizList);
	        // Inoltro alla pagina JSP per visualizzare il quiz
	        request.getRequestDispatcher("quizMultiplo.jsp").forward(request, response);
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String scelta = request.getParameter("scelta");

	        //verifico se la risposta selezionata è corretta
	        boolean isCorretta = quizRepository.scegliScelta(scelta);

	        //invio la risposta all'utente
	        response.getWriter().write("Larispostaècorretta? " + isCorretta);
	    }

}
