package it.generationitaly.quizapp.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Random;

import it.generationitaly.quizapp.entity.QuizVeroFalso;
import it.generationitaly.quizapp.repository.QuizVeroFalsoRepository;
import it.generationitaly.quizapp.repository.impl.QuizVeroFalsoRepositoryImpl;

@WebServlet("/quizVeroFalso")
public class QuizVeroFalsoServlet extends HttpServlet {

	private QuizVeroFalsoRepository quizVeroFalsoRepository = new QuizVeroFalsoRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// array di 5 domande
		int[] arrayDomande = new int[5];

		// Creare un numero Random tra 1 e 10
		Random rand = new Random();

		boolean continua = true;

		while (continua) {
			for (int i = 0; i < arrayDomande.length; i++) {
				int random = rand.nextInt(10) + 1;
				boolean control = true;
				for (int elemento : arrayDomande) {
					if (elemento == random) {
						i--;
						control = false;
					} else {

					}
				}
				if (control == true)
					arrayDomande[i] = random;
			}
			if (arrayDomande[4] != 0)
				continua = false;
		}

		QuizVeroFalso quizVF1 = quizVeroFalsoRepository.findById(arrayDomande[1]);
		QuizVeroFalso quizVF2 = quizVeroFalsoRepository.findById(arrayDomande[2]);
		QuizVeroFalso quizVF3 = quizVeroFalsoRepository.findById(arrayDomande[3]);
		QuizVeroFalso quizVF4 = quizVeroFalsoRepository.findById(arrayDomande[4]);
		QuizVeroFalso quizVF5 = quizVeroFalsoRepository.findById(arrayDomande[5]);

		String domanda1 = quizVF1.getDomanda();
		String domanda2 = quizVF2.getDomanda();
		String domanda3 = quizVF3.getDomanda();
		String domanda4 = quizVF4.getDomanda();
		String domanda5 = quizVF5.getDomanda();

		request.setAttribute("domanda1", domanda1);
		request.setAttribute("domanda2", domanda2);
		request.setAttribute("domanda3", domanda3);
		request.setAttribute("domanda4", domanda4);
		request.setAttribute("domanda5", domanda5);
		request.setAttribute("arrDomande", arrayDomande);
		request.getRequestDispatcher("/quizVeroFalso.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// int idDomanda = (Integer) request.getAttribute("idDomanda");
		boolean risposta1 = (boolean) request.getAttribute("risposta1");
		boolean risposta2 = (boolean) request.getAttribute("risposta2");
		boolean risposta3 = (boolean) request.getAttribute("risposta3");
		boolean risposta4 = (boolean) request.getAttribute("risposta4");
		boolean risposta5 = (boolean) request.getAttribute("risposta5");

	}

}