package it.generationitaly.quizapp.entity;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "contatti")
public class Contatto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "nome", nullable = false, length = 255)
    private String nome;

    @Column(name = "email", nullable = false, length = 255)
    private String email;

    @Column(name = "telefono", nullable = false, length = 15)
    private String telefono;

    @Column(name = "oggetto", nullable = false, length = 50)
    private String oggetto;

    @Column(name = "messaggio", nullable = false, columnDefinition = "TEXT")
    private String messaggio;

    @Column(name = "ore_invio", nullable = false, updatable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    @Temporal(TemporalType.TIMESTAMP)
    private Date oreInvio;

	public Contatto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Contatto(int id, String nome, String email, String telefono, String oggetto, String messaggio,
			Date oreInvio) {
		super();
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.telefono = telefono;
		this.oggetto = oggetto;
		this.messaggio = messaggio;
		this.oreInvio = oreInvio;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getOggetto() {
		return oggetto;
	}

	public void setOggetto(String oggetto) {
		this.oggetto = oggetto;
	}

	public String getMessaggio() {
		return messaggio;
	}

	public void setMessaggio(String messaggio) {
		this.messaggio = messaggio;
	}

	public Date getOreInvio() {
		return oreInvio;
	}

	public void setOreInvio(Date oreInvio) {
		this.oreInvio = oreInvio;
	}

	
   
}
