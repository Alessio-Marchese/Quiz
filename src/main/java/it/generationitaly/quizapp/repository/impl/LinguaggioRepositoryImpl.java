package it.generationitaly.quizapp.repository.impl;

import java.util.List;

import it.generationitaly.quizapp.entity.Linguaggio;
import it.generationitaly.quizapp.repository.LinguaggioRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;
import jakarta.persistence.TypedQuery;

public class LinguaggioRepositoryImpl extends JpaRepositoryImpl<Linguaggio,Integer> implements LinguaggioRepository {

	public LinguaggioRepositoryImpl(Class<Linguaggio> clazz) {
		super(clazz);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Linguaggio findByNome(String nome) {
		Linguaggio linguaggio = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Linguaggio> q = em.createQuery("select u from Linguaggio u where u.nome=:nome", Linguaggio.class);
			q.setParameter("nome", nome);
			List<Linguaggio> linguaggi = q.getResultList();
			linguaggio = linguaggi.isEmpty() ? null : linguaggi.get(0);
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return null;
	}

}
