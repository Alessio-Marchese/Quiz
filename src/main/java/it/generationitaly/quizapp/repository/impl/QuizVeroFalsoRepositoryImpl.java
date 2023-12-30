package it.generationitaly.quizapp.repository.impl;

import java.util.List;

import it.generationitaly.quizapp.entity.QuizVeroFalso;
import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.QuizVeroFalsoRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;
import jakarta.persistence.TypedQuery;

public class QuizVeroFalsoRepositoryImpl extends JpaRepositoryImpl<QuizVeroFalso, Integer> implements QuizVeroFalsoRepository{

	public QuizVeroFalsoRepositoryImpl() {
		super(QuizVeroFalso.class);
	}

	@Override
	public Long countQuiz() {
		Long righe = 0L;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Long> q = em.createQuery("SELECT COUNT(qvf) FROM QuizVeroFalso qvf", Long.class);
			List<Long> risultato = q.getResultList();
			righe = risultato.isEmpty() ? null : risultato.get(0);
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return righe;
	}

}
