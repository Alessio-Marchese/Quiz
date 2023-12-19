package it.generationitaly.quizapp.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.quizapp.entity.Capitolo;
import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.entity.QuizMultiplo;
import it.generationitaly.quizapp.entity.QuizVeroFalso;
import it.generationitaly.quizapp.repository.CapitoloRepository;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import it.generationitaly.quizapp.repository.QuizMultiploRepository;
import it.generationitaly.quizapp.repository.QuizVeroFalsoRepository;
import it.generationitaly.quizapp.repository.impl.CapitoloRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.LinguaggioRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.QuizMultiploRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.QuizVeroFalsoRepositoryImpl;

import java.util.Random;

@WebServlet("/quiz")
public class QuizServlet extends HttpServlet {
	
	
	
	
	private CapitoloRepository capitoloRepo = new CapitoloRepositoryImpl();
	private QuizVeroFalsoRepository quizVFRepo = new QuizVeroFalsoRepositoryImpl();
	private QuizMultiploRepository quizMultiploRepo = new QuizMultiploRepositoryImpl();
	private LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();
	
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	
		
		 		int idCapitolo = Integer.parseInt(request.getParameter("idCapitolo"));
		 		Capitolo capitolo = capitoloRepo.findById(idCapitolo);
		 		System.out.println(capitolo.getId());
			 	List<QuizMultiplo> quizMultipli = capitolo.getQuizMultiplo();
			 	List<QuizVeroFalso> quizVF = capitolo.getQuizVeroFalso();
			    List<Object> quiz = new ArrayList<Object>();
			    List<Object> risposteGiuste = new ArrayList<Object>();
				List<Object> risposteSbagliate = new ArrayList<Object>();
			 	request.getSession().setAttribute("quiz", quiz);
			 	request.getSession().setAttribute("risposteGiuste", risposteGiuste);
			 	request.getSession().setAttribute("risposteSbagliate", risposteSbagliate);
			 	quiz.addAll(quizMultipli);
			 	quiz.addAll(quizVF);
			 	Random random = new Random();
			 	int random1 = random.nextInt(quiz.size());
			 	Object object = quiz.get(random1);
			 	request.setAttribute("quiz", object);
			 	request.setAttribute("linguaggi", linguaggioRepo.findAll());
			 	RequestDispatcher requestDispatcher = request.getRequestDispatcher("quiz.jsp");
			 	requestDispatcher.forward(request, response);
			 	
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	List<Object> quiz = (List<Object>) request.getSession().getAttribute("quiz");
	    	List<Object> risposteGiuste = (List<Object>) request.getSession().getAttribute("risposteGiuste");
	    	List<Object> risposteSbagliate = (List<Object>) request.getSession().getAttribute("risposteSbagliate");
	        if(request.getParameter("idVF")!= null) {
	        	int id = Integer.parseInt(request.getParameter("idVF"));
	        	QuizVeroFalso vf = quizVFRepo.findById(id);
	        	String risposta = request.getParameter("verofalso");
	        	Boolean rispostaAsBoolean = null;
	        	Object objToRemove = null;
	        	for(Object o : quiz) {
	        		if(o instanceof QuizVeroFalso) {
	        			QuizVeroFalso objAsVF = (QuizVeroFalso) o;
	        			if(objAsVF.getId() == vf.getId()) {
	        				objToRemove = o;
	        			}
	        		}
	        	}
	        	quiz.remove(objToRemove);
	        	if(risposta.equals("vero")) {
	        		rispostaAsBoolean = true;
	        	} else if(risposta.equals("falso")){
	        		rispostaAsBoolean = false;
	        	}
	        	
	        	Boolean checkBool = vf.isBool();
	        	if(checkBool == rispostaAsBoolean) {
	        		risposteGiuste.add(vf);
	        	} else if (checkBool != rispostaAsBoolean) {
	        		risposteSbagliate.add(vf);
	        	}
	        	
	        } else {
	        	int id = Integer.parseInt(request.getParameter("idQM"));
	        	QuizMultiplo qm = quizMultiploRepo.findById(id);
	        	String risposta = request.getParameter("risposta");
	        	String check = qm.getCorretta();
	        	Object objToRemove = null;
	        	for(Object o : quiz) {
        			if(o instanceof QuizMultiplo) {
        				QuizMultiplo objAsQM = (QuizMultiplo) o;
        				if (objAsQM.getId() == qm.getId()) {
        					objToRemove = o;
        				}
        			}
        		}
	        	quiz.remove(objToRemove);
	        	if(check.equals(risposta)) {
	        		risposteGiuste.add(qm);
	        	} else if(!check.equals(risposta)) {
	        		risposteSbagliate.add(qm);
	        	}
	        }
	        
	        	System.out.println(quiz.size());
	        	Random random = new Random();
	        	if(!quiz.isEmpty()) {
	        		 int random1 = random.nextInt(quiz.size());
	 			 	Object object = quiz.get(random1);
	 			 	request.setAttribute("quiz", object);
	 			 	request.setAttribute("linguaggi", linguaggioRepo.findAll());
	 			 	RequestDispatcher requestDispatcher = request.getRequestDispatcher("quiz.jsp");
	 			 	requestDispatcher.forward(request, response);
	        	} else {
	        		request.setAttribute("risposteGiuste", risposteGiuste);
		        	request.setAttribute("risposteSbagliate", risposteSbagliate);
		        	int idCapitolo = Integer.parseInt(request.getParameter("idCapitolo"));
		        	request.getRequestDispatcher("mostrarisultati.jsp?idCapitolo="+idCapitolo).forward(request, response);
	        	}
		       
	        

	        
	        
	    }

}
