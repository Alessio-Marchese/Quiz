package it.generationitaly.quizapp.repository.impl;

import it.generationitaly.quizapp.entity.Capitolo;
import it.generationitaly.quizapp.repository.CapitoloRepository;

public class CapitoloRepositoryImpl extends JpaRepositoryImpl<Capitolo,Integer> implements CapitoloRepository{

	public CapitoloRepositoryImpl() {
		super(Capitolo.class);
		// TODO Auto-generated constructor stub
	}

}
