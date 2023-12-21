package it.generationitaly.quizapp.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "quiz_multiplo")
public class QuizMultiplo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "domanda", length = 100, nullable = false)
	private String domanda;
	
	@Column(name = "corretta", length = 100, nullable = false)
	private String corretta;
	
	@Column(name = "errore1", length = 100, nullable = false)
	private String errore1;
	
	@Column(name = "errore2", length = 100, nullable = false)
	private String errore2;
	
	@ManyToOne
	@JoinColumn(name = "capitolo_id", unique = true, nullable = false)
	private Capitolo capitolo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDomanda() {
		return domanda;
	}

	public void setDomanda(String domanda) {
		this.domanda = domanda;
	}

	public String getCorretta() {
		return corretta;
	}

	public void setCorretta(String corretta) {
		this.corretta = corretta;
	}

	public String getErrore1() {
		return errore1;
	}

	public void setErrore1(String errore1) {
		this.errore1 = errore1;
	}

	public String getErrore2() {
		return errore2;
	}

	public void setErrore2(String errore2) {
		this.errore2 = errore2;
	}

	public Capitolo getCapitolo() {
		return capitolo;
	}

	public void setCapitolo(Capitolo capitolo) {
		this.capitolo = capitolo;
	}

	
	
}
