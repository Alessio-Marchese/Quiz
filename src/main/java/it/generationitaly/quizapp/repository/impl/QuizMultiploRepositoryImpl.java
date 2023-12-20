package it.generationitaly.quizapp.repository.impl;

import it.generationitaly.quizapp.entity.QuizMultiplo;
import it.generationitaly.quizapp.repository.QuizMultiploRepository;

public class QuizMultiploRepositoryImpl extends JpaRepositoryImpl<QuizMultiplo, Integer> implements QuizMultiploRepository{
	
	public QuizMultiploRepositoryImpl() {
		super(QuizMultiplo.class);
	}

}