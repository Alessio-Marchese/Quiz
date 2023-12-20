package it.generationitaly.quizapp.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.quizapp.entity.Capitolo;
import it.generationitaly.quizapp.entity.Contenuto;
import it.generationitaly.quizapp.repository.CapitoloRepository;
import it.generationitaly.quizapp.repository.ContenutoRepository;
import it.generationitaly.quizapp.repository.impl.CapitoloRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.ContenutoRepositoryImpl;

@WebServlet("/teoria")
public class ContenutoServlet extends HttpServlet {
	
	private CapitoloRepository capitoloRepository = new CapitoloRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int idCapitolo = 1;
		Capitolo capitolo = capitoloRepository.findById(idCapitolo);

        if (capitolo != null) {
            List<Contenuto> teoria = capitolo.getContenuto();
            request.setAttribute("teoria", teoria);
            
           /* contenuto = new ArrayList<Object>();
            request.setAttribute("quiz", contenuto);
            request.setAttribute("teoria", teoria); 
            */
            
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("teoria.jsp");
            requestDispatcher.forward(request, response);
        }
    }

}
