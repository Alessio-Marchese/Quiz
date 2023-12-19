package it.generationitaly.quizapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import it.generationitaly.quizapp.repository.impl.LinguaggioRepositoryImpl;

@WebServlet("/profilo")
public class ProfiloServlet extends HttpServlet {
	
	LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Linguaggio> linguaggi = linguaggioRepo.findAll();
		request.setAttribute("linguaggi", linguaggi);
		request.getRequestDispatcher("profile-page.jsp").forward(request, response);
	}
}
