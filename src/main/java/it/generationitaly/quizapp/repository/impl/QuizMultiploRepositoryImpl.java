package it.generationitaly.quizapp.repository.impl;

import java.util.ArrayList;
import java.util.List;

import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.entity.QuizMultiplo;
import it.generationitaly.quizapp.repository.QuizMultiploRepository;

public class QuizMultiploRepositoryImpl extends JpaRepositoryImpl<QuizMultiplo, Integer> implements QuizMultiploRepository{

	private List<QuizMultiplo> quizList = new ArrayList<>();
	
	public QuizMultiploRepositoryImpl() {
		super(QuizMultiplo.class);
	}
	
	@Override
	public boolean scegliScelta(String scelta) {
		if (!quizList.isEmpty()) {
			 // Prendo il primo quiz dalla lista
            QuizMultiplo quiz = quizList.get(0);
            String rispostaGiusta = quiz.getCorretta();
            return scelta.equals(rispostaGiusta);
        }
		return false;
	}

}