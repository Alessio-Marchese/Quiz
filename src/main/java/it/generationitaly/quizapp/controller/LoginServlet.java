package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;

import java.io.IOException;

import java.util.List;

import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import it.generationitaly.quizapp.repository.UtenteRepository;
import it.generationitaly.quizapp.repository.impl.LinguaggioRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.UtenteRepositoryImpl;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();
	private LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Linguaggio> linguaggi = linguaggioRepo.findAll();
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		Utente utente = utenteRepository.findByUsername(username);

		if (utente != null && utente.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			request.setAttribute("linguaggi", linguaggi);
			session.setAttribute("utente", utente);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("profile-page.jsp");
			requestDispatcher.forward(request, response);

		} else {
			response.sendRedirect("login.jsp?errore");
		}

	}

}
