package it.generationitaly.quizapp.repository.impl;

import java.util.List;

import it.generationitaly.quizapp.entity.Utente;
import it.generationitaly.quizapp.repository.UtenteRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;
import jakarta.persistence.TypedQuery;

public class UtenteRepositoryImpl extends JpaRepositoryImpl<Utente,Integer> implements UtenteRepository{

	public UtenteRepositoryImpl() {
		super(Utente.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Utente findByUsername(String username) {
		Utente utente = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Utente> q = em.createQuery("select u from Utente u where u.username=:username", Utente.class);
			q.setParameter("username", username);
			List<Utente> utenti = q.getResultList();
			utente = utenti.isEmpty() ? null : utenti.get(0);
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return utente;
	}

	@Override
	public Utente findByEmail(String email) {
		Utente utente = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Utente> q = em.createQuery("select u from Utente u where u.email=:email", Utente.class);
			q.setParameter("email", email);
			List<Utente> utenti = q.getResultList();
			utente = utenti.isEmpty() ? null : utenti.get(0);
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return utente;
	}

	@Override
	public Utente findByNumeroTelefono(int numero) {
		Utente utente = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Utente> q = em.createQuery("select u from Utente u where u.numeroTelefono=:numeroTelefono", Utente.class);
			q.setParameter("numeroTelefono", numero);
			List<Utente> utenti = q.getResultList();
			utente = utenti.isEmpty() ? null : utenti.get(0);
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return utente;
	}

}
