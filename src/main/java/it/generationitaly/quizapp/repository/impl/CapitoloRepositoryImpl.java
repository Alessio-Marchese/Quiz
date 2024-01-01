
package it.generationitaly.quizapp.repository.impl;

import java.util.List;

import it.generationitaly.quizapp.entity.Capitolo;
import it.generationitaly.quizapp.repository.CapitoloRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;
import jakarta.persistence.TypedQuery;

public class CapitoloRepositoryImpl extends JpaRepositoryImpl<Capitolo,Integer> implements CapitoloRepository{

	public CapitoloRepositoryImpl() {
		super(Capitolo.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Long countCapitoli() {
			Long righe = 0L;
			EntityManager em = null;
			EntityTransaction tx = null;
			try {
				em = emf.createEntityManager();
				tx = em.getTransaction();
				tx.begin();
				TypedQuery<Long> q = em.createQuery("SELECT COUNT(c) FROM Capitolo c", Long.class);
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
