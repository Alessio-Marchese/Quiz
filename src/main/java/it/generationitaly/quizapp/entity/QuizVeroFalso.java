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
@Table(name = "quiz_vero_falso")
public class QuizVeroFalso{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "domanda", length = 100, nullable = false)
	private String domanda;

	@Column(name = "bool", nullable = false)
	private Boolean bool;
	
	@ManyToOne
	@JoinColumn(name = "capitolo_id", unique = true, nullable = false)
	private Capitolo capitolo;

	public String getDomanda() {
		return domanda;
	}

	public void setDomanda(String domanda) {
		this.domanda = domanda;
	}

	public Boolean getBool() {
		return bool;
	}

	public void setBool(Boolean bool) {
		this.bool = bool;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Capitolo getCapitolo() {
		return capitolo;
	}

	public void setCapitolo(Capitolo capitolo) {
		this.capitolo = capitolo;
	}

	
}
