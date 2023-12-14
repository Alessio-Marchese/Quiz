package it.generationitaly.quizapp.repository;

import java.util.List;

public interface JpaRepository<T,ID> {
	
	void save(T entity);
	
	T findById(ID id);
	
	void update(T entity);
	
	void delete(T entity);
	
	List<T> findAll();
}
