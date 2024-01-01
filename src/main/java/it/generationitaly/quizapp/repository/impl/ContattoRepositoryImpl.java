package it.generationitaly.quizapp.repository.impl;

import it.generationitaly.quizapp.entity.Contatto;
import it.generationitaly.quizapp.repository.ContattoRepository;

public class ContattoRepositoryImpl extends JpaRepositoryImpl<Contatto, Integer> implements ContattoRepository{

	public ContattoRepositoryImpl() {
		super(Contatto.class);
	}

}
