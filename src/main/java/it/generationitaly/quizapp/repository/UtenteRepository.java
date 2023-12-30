package it.generationitaly.quizapp.repository;

import it.generationitaly.quizapp.entity.Utente;

public interface UtenteRepository extends JpaRepository<Utente,Integer> {
	
	Utente findByUsername(String username);
	
	Utente findByEmail(String email);
	
	Utente findByNumeroTelefono(int numero);
}
