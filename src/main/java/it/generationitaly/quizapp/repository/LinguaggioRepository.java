package it.generationitaly.quizapp.repository;

import it.generationitaly.quizapp.entity.Linguaggio;

public interface LinguaggioRepository  extends JpaRepository<Linguaggio,Integer> {
	
	Linguaggio findByNome(String nome);

}
