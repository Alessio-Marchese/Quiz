package it.generationitaly.quizapp.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "capitolo")
public class Capitolo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@ManyToOne
	@JoinColumn(name = "linguaggio_id", unique = true, nullable = false)
	private Linguaggio linguaggio;

	@Column(name = "nome", nullable = false, length = 45)
	private String nome;

	@OneToMany(mappedBy = "capitolo", fetch = FetchType.EAGER)
	private List<QuizVeroFalso> quizVeroFalso = new ArrayList<QuizVeroFalso>();

	@OneToMany(mappedBy = "capitolo", fetch = FetchType.EAGER)
	private List<QuizMultiplo> quizMultipli = new ArrayList<QuizMultiplo>();

	@OneToMany(mappedBy = "capitolo", fetch = FetchType.EAGER)
	private List<Contenuto> contenuti = new ArrayList<Contenuto>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Linguaggio getLinguaggio() {
		return linguaggio;
	}

	public void setLinguaggio(Linguaggio linguaggio) {
		this.linguaggio = linguaggio;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<QuizVeroFalso> getQuizVeroFalso() {
		return quizVeroFalso;
	}

	public void setQuizVeroFalso(List<QuizVeroFalso> quizVeroFalso) {
		this.quizVeroFalso = quizVeroFalso;
	}

	public List<QuizMultiplo> getQuizMultipli() {
		return quizMultipli;
	}

	public void setQuizMultipli(List<QuizMultiplo> quizMultipli) {
		this.quizMultipli = quizMultipli;
	}

	public List<Contenuto> getContenuti() {
		return contenuti;
	}

	public void setContenuti(List<Contenuto> contenuti) {
		this.contenuti = contenuti;
	}

}
