package it.generationitaly.quizapp.repository.impl;

import it.generationitaly.quizapp.entity.QuizVeroFalso;
import it.generationitaly.quizapp.repository.QuizVeroFalsoRepository;

public class QuizVeroFalsoRepositoryImpl extends JpaRepositoryImpl<QuizVeroFalso, Integer> implements QuizVeroFalsoRepository{

	public QuizVeroFalsoRepositoryImpl(Class<QuizVeroFalso> clazz) {
		super(clazz);
	}

}
