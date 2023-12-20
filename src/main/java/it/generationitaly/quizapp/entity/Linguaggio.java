package it.generationitaly.quizapp.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;


@Entity
@Table(name = "linguaggio")
public class Linguaggio {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "nome", length = 45, nullable = false)
	private String nome;

	@OneToMany(mappedBy = "linguaggio", fetch = FetchType.EAGER)
	private List<Capitolo> capitoli = new ArrayList<Capitolo>();

	public Linguaggio() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Linguaggio(int id, String nome) {
		super();
		this.id = id;
		this.nome = nome;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<Capitolo> getCapitoli() {
		return capitoli;
	}

	public void setCapitoli(List<Capitolo> capitoli) {
		this.capitoli = capitoli;
	}

}
