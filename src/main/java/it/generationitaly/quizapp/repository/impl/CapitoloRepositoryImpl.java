package it.generationitaly.quizapp.repository.impl;

import it.generationitaly.quizapp.entity.Capitolo;
import it.generationitaly.quizapp.repository.CapitoloRepository;

public class CapitoloRepositoryImpl extends JpaRepositoryImpl<Capitolo, Integer> implements CapitoloRepository{

	public CapitoloRepositoryImpl(Class<Capitolo> clazz) {
		super(clazz);
	}
	
}
