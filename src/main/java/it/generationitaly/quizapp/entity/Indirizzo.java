package it.generationitaly.quizapp.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/*- Table `mydb`.`indirizzo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`indirizzo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `paese` VARCHAR(45) NOT NULL,
  `citta` VARCHAR(45) NOT NULL,
  `via` VARCHAR(45) NOT NULL,
  `numero_civico` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;*/

@Entity
@Table(name = "indirizzo")
public class Indirizzo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "paese", length = 45, nullable = false)
	private String paese;

	@Column(name = "citta", length = 45, nullable = false)
	private String citta;

	@Column(name = "via", length = 45, nullable = false)
	private String via;

	@Column(name = "numero_civico", length = 45, nullable = false)
	private String numeroCivico;

	public Indirizzo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Indirizzo(int id, String paese, String citta, String via, String numeroCivico) {
		super();
		this.id = id;
		this.paese = paese;
		this.citta = citta;
		this.via = via;
		this.numeroCivico = numeroCivico;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPaese() {
		return paese;
	}

	public void setPaese(String paese) {
		this.paese = paese;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getVia() {
		return via;
	}

	public void setVia(String via) {
		this.via = via;
	}

	public String getNumeroCivico() {
		return numeroCivico;
	}

	public void setNumeroCivico(String numeroCivico) {
		this.numeroCivico = numeroCivico;
	}

	@Override
	public String toString() {
		return "Indirizzo [id=" + id + ", paese=" + paese + ", citta=" + citta + ", via=" + via + ", numeroCivico="
				+ numeroCivico + "]";
	}

}
