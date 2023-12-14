package it.generationitaly.quizapp.repository.impl;

import java.util.List;

import it.generationitaly.quizapp.repository.JpaRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.PersistenceException;
import jakarta.persistence.TypedQuery;

public class JpaRepositoryImpl<T,ID> implements JpaRepository<T,ID> {

	protected static EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence");

	protected Class<T> clazz;

	public JpaRepositoryImpl(Class<T> clazz) {
		this.clazz = clazz;
	}

	@Override
	public void save(T entity) {
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			em.persist(entity);
			tx.commit();
		} catch (PersistenceException e) {
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
	}

	@Override
	public T findById(ID id) {
		T entity = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			entity = em.find(clazz, id);
			tx.commit();
		} catch (PersistenceException e) {
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return entity;
	}

	@Override
	public void update(T entity) {
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			em.merge(entity);
			tx.commit();
		} catch (PersistenceException e) {
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
	}

	@Override
	public void delete(T entity) {
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			em.remove(em.contains(entity) ? entity : em.merge(entity));
			tx.commit();
		} catch (PersistenceException e) {
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
	}

	@Override
	public List<T> findAll() {
		List<T> entity = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<T> query = em.createQuery("from " + clazz.getName(), clazz);
			entity = query.getResultList();
			tx.commit();
		} catch (PersistenceException e) {
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return entity;
	}

}
