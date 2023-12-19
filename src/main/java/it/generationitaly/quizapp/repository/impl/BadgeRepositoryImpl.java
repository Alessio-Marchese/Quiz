package it.generationitaly.quizapp.repository.impl;

import it.generationitaly.quizapp.entity.Badge;
import it.generationitaly.quizapp.repository.BadgeRepository;

public class BadgeRepositoryImpl extends JpaRepositoryImpl<Badge, Integer> implements BadgeRepository{

	public BadgeRepositoryImpl() {
		super(Badge.class);
	}
	
}
