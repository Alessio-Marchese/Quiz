package it.generationitaly.quizapp.repository.impl;

import it.generationitaly.quizapp.entity.Indirizzo;
import it.generationitaly.quizapp.repository.IndirizzoRepository;

public class IndirizzoRepositoryImpl extends JpaRepositoryImpl<Indirizzo, Integer> implements IndirizzoRepository{

	public IndirizzoRepositoryImpl() {
		super(Indirizzo.class);
	}
}
