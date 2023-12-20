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

@WebServlet("/listaTeoria")
public class ListaTeoriaServlet extends HttpServlet {

	LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Linguaggio linguaggio = linguaggioRepo.findById(id);
		request.setAttribute("linguaggio", linguaggio);
		request.getRequestDispatcher("lista-teoria.jsp").forward(request, response);
	}
}
