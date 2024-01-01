package it.generationitaly.quizapp.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import it.generationitaly.quizapp.entity.Badge;
import it.generationitaly.quizapp.entity.Capitolo;
import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.entity.QuizMultiplo;
import it.generationitaly.quizapp.entity.QuizVeroFalso;
import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.BadgeRepository;
import it.generationitaly.quizapp.repository.CapitoloRepository;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import it.generationitaly.quizapp.repository.QuizMultiploRepository;
import it.generationitaly.quizapp.repository.QuizVeroFalsoRepository;
import it.generationitaly.quizapp.repository.UtenteRepository;
import it.generationitaly.quizapp.repository.impl.BadgeRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.CapitoloRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.LinguaggioRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.QuizMultiploRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.QuizVeroFalsoRepositoryImpl;
import it.generationitaly.quizapp.repository.impl.UtenteRepositoryImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/quizFinale")
public class QuizFinaleServlet extends HttpServlet {

	private CapitoloRepository capitoloRepo = new CapitoloRepositoryImpl();
	private QuizVeroFalsoRepository quizVFRepo = new QuizVeroFalsoRepositoryImpl();
	private QuizMultiploRepository quizMultiploRepo = new QuizMultiploRepositoryImpl();
	private LinguaggioRepository linguaggioRepo = new LinguaggioRepositoryImpl();
	private BadgeRepository badgeRepo = new BadgeRepositoryImpl();
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("utente") == null) {
			response.sendRedirect("welcome");
			return;
		}
		Utente utente = (Utente) request.getSession().getAttribute("utente"); 

		int contatoreDomande = 0;
		Integer idLinguaggio = idLinguaggio = Integer.parseInt(request.getParameter("idLinguaggio"));
		if(utente.getBadges().get(--idLinguaggio) != null) {
			response.sendRedirect("welcome");
			return;
		}
		List<Object> quiz = new ArrayList<Object>();
		List<Capitolo> capitoli = new ArrayList<Capitolo>();

		Linguaggio linguaggio = linguaggioRepo.findById(idLinguaggio);
		request.getSession().setAttribute("linguaggio", linguaggio);
		request.getSession().setAttribute("idLinguaggio", idLinguaggio);
		capitoli = linguaggio.getCapitoli();
		for (Capitolo capitolo : capitoli) {
			List<QuizMultiplo> qM = capitolo.getQuizMultipli();
			quiz.addAll(qM);
			List<QuizVeroFalso> qVF = capitolo.getQuizVeroFalso();
			quiz.addAll(qVF);
		}

		List<Object> risposteGiuste = new ArrayList<Object>();
		List<Object> risposteSbagliate = new ArrayList<Object>();
		request.setAttribute("capitoli", capitoli);
		request.getSession().setAttribute("contatoreDomande", contatoreDomande);
		request.getSession().setAttribute("quiz", quiz);
		request.getSession().setAttribute("risposteGiuste", risposteGiuste);
		request.getSession().setAttribute("risposteSbagliate", risposteSbagliate);
		Random random = new Random();
		int random1 = random.nextInt(quiz.size());
		Object object = quiz.get(random1);
		request.setAttribute("quiz", object);
		request.setAttribute("linguaggi", linguaggioRepo.findAll());
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("quiz-finale.jsp");
		requestDispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("utente") == null) {
			response.sendRedirect("welcome");
			return;
		}
		List<Object> quiz = (List<Object>) request.getSession().getAttribute("quiz");
		List<Object> risposteGiuste = (List<Object>) request.getSession().getAttribute("risposteGiuste");
		List<Object> risposteSbagliate = (List<Object>) request.getSession().getAttribute("risposteSbagliate");
		int contatoreDomande = (Integer) request.getSession().getAttribute("contatoreDomande");
		contatoreDomande++;
		request.getSession().setAttribute("contatoreDomande", contatoreDomande);
		if (request.getParameter("idVF") != null) {
			int id = Integer.parseInt(request.getParameter("idVF"));
			QuizVeroFalso vf = quizVFRepo.findById(id);
			String risposta = request.getParameter("verofalso");
			Boolean rispostaAsBoolean = null;
			Object objToRemove = null;
			for (Object o : quiz) {
				if (o instanceof QuizVeroFalso) {
					QuizVeroFalso objAsVF = (QuizVeroFalso) o;
					if (objAsVF.getId() == vf.getId()) {
						objToRemove = o;
					}
				}
			}
			quiz.remove(objToRemove);
			if (risposta.equals("vero")) {
				rispostaAsBoolean = true;
			} else if (risposta.equals("falso")) {
				rispostaAsBoolean = false;
			}

			Boolean checkBool = vf.getBool();
			if (checkBool == rispostaAsBoolean) {
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
			for (Object o : quiz) {
				if (o instanceof QuizMultiplo) {
					QuizMultiplo objAsQM = (QuizMultiplo) o;
					if (objAsQM.getId() == qm.getId()) {
						objToRemove = o;
					}
				}
			}
			quiz.remove(objToRemove);
			if (check.equals(risposta)) {
				risposteGiuste.add(qm);
			} else if (!check.equals(risposta)) {
				risposteSbagliate.add(qm);
			}
		}

		Random random = new Random();
		if (contatoreDomande < 10) {
			int random1 = random.nextInt(quiz.size());
			Object object = quiz.get(random1);
			request.setAttribute("quiz", object);
			request.setAttribute("linguaggi", linguaggioRepo.findAll());
			
			
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("quiz-finale.jsp");
				requestDispatcher.forward(request, response);

		} else {
			int idLinguaggio = (Integer) (request.getSession().getAttribute("idLinguaggio"));
			Linguaggio linguaggio = linguaggioRepo.findById(idLinguaggio);
			request.setAttribute("capitoli", linguaggio.getCapitoli());
			request.setAttribute("risposteGiuste", risposteGiuste);
			request.setAttribute("risposteSbagliate", risposteSbagliate);
			if (risposteGiuste.size() >= 0) {
				Badge badge = badgeRepo.findById(idLinguaggio);
				Utente utente = (Utente) request.getSession().getAttribute("utente");
				utente.getBadges().add(badge);
				badge.getUtenti().add(utente);
				utenteRepository.update(utente);
				boolean esameSuperato = true;
				request.setAttribute("esameSuperato", esameSuperato);
				request.getRequestDispatcher("mostrarisultati.jsp?idLinguaggio=" + idLinguaggio).forward(request,
						response);
			} else {
				boolean esameSuperato = false;
				request.setAttribute("esameSuperato", esameSuperato);
				request.getRequestDispatcher("mostrarisultati.jsp?idLinguaggio=" + idLinguaggio).forward(request,
						response);
			}

		}

	}

}
