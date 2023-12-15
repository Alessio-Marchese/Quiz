package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.UtenteRepository;
import it.generationitaly.quizapp.repository.impl.UtenteRepositoryImpl;

public class DeleteUtenteServlet extends HttpServlet {
	
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl(getClass());

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		
		int idUtenteDaCancellare = Integer.parseInt(request.getParameter("utenteId"));
		
		Utente utenteDaCancellare = utenteRepository.findById(idUtenteDaCancellare);
		
		utenteRepository.delete(utenteDaCancellare);
		
		response.sendRedirect("login.jsp");

	}

}
