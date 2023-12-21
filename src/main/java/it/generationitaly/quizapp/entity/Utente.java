package it.generationitaly.quizapp.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "utente")
public class Utente {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "username", length = 20, nullable = false)
	private String username;
	
	@Column(name = "password", length = 20, nullable = false)
	private String password;
	
	@Column(name = "email", length = 45, nullable = false)
	private String email;
	
	@Column(name = "nome", length = 45, nullable = false)
	private String nome;
	
	@Column(name = "cognome", length = 45, nullable = false)
	private String cognome;
	
	@Column(name = "data_nascita")
	@Temporal(TemporalType.DATE)
	private Date dataNascita;
	
	@Column(name = "numero_telefono", nullable = true)
	private Integer numeroTelefono;
	
	@OneToOne(cascade = {  CascadeType.MERGE, CascadeType.REMOVE})
	@JoinColumn(name = "indirizzo_id", unique = true, nullable = true)
	private Indirizzo indirizzo;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(
			name="utente_has_badge",
			joinColumns = @JoinColumn(name="utente_id"),
			inverseJoinColumns = @JoinColumn(name = "badge_id"))
	private List<Badge> badges;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(
			name="utente_has_quiz",
			joinColumns = @JoinColumn(name="utente_id"),
			inverseJoinColumns = @JoinColumn(name = "quiz_id"))
	private List<Quiz> quiz;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public Date getDataNascita() {
		return dataNascita;
	}

	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}

	public Integer getNumeroTelefono() {
		return numeroTelefono;
	}

	public void setNumeroTelefono(Integer numeroTelefono) {
		this.numeroTelefono = numeroTelefono;
	}

	public Indirizzo getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(Indirizzo indirizzo) {
		this.indirizzo = indirizzo;
	}

	public List<Badge> getBadges() {
		return badges;
	}

	public void setBadges(List<Badge> badges) {
		this.badges = badges;
	}

	public List<Quiz> getQuiz() {
		return quiz;
	}

	public void setQuiz(List<Quiz> quiz) {
		this.quiz = quiz;
	}

}
