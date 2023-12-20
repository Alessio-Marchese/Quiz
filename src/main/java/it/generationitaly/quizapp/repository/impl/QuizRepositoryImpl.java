package it.generationitaly.quizapp.repository.impl;

import it.generationitaly.quizapp.entity.Quiz;
import it.generationitaly.quizapp.repository.QuizRepository;

public class QuizRepositoryImpl extends JpaRepositoryImpl<Quiz,Integer> implements QuizRepository {

	public QuizRepositoryImpl() {
		super(Quiz.class);
	}

}
