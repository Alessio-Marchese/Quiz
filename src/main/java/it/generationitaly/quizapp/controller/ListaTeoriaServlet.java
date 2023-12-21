package it.generationitaly.quizapp.controller;

import java.io.IOException;

import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import it.generationitaly.quizapp.repository.impl.LinguaggioRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/listaTeoria")
public class ListaTeoriaServlet extends HttpServlet {

	private LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Linguaggio linguaggio = linguaggioRepo.findById(id);
		request.setAttribute("linguaggio", linguaggio);
		request.getRequestDispatcher("lista-teoria.jsp").forward(request, response);
	}
}
