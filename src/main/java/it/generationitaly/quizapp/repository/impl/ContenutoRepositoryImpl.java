package it.generationitaly.quizapp.repository.impl;

import it.generationitaly.quizapp.entity.Contenuto;
import it.generationitaly.quizapp.repository.ContenutoRepository;

public class ContenutoRepositoryImpl extends JpaRepositoryImpl<Contenuto,Integer> implements ContenutoRepository {

	public ContenutoRepositoryImpl() {
		super(Contenuto.class);
	}

}
