package it.generationitaly.quizapp.repository;

import it.generationitaly.quizapp.entity.QuizMultiplo;

public interface QuizMultiploRepository extends JpaRepository<QuizMultiplo, Integer>{
	
	Long countQuiz();
}
