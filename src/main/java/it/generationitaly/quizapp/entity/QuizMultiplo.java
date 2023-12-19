package it.generationitaly.quizapp.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

/*-
  -----------------------------------------------------
-- Table `mydb`.`quiz_multiplo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`quiz_multiplo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `domanda` VARCHAR(100) NOT NULL,
  `corretta` VARCHAR(100) NOT NULL,
  `errore1` VARCHAR(100) NOT NULL,
  `errore2` VARCHAR(100) NOT NULL,
  `linguaggio_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_quiz_multiplo_linguaggio1_idx` (`linguaggio_id` ASC) VISIBLE,
  CONSTRAINT `fk_quiz_multiplo_linguaggio1`
    FOREIGN KEY (`linguaggio_id`)
    REFERENCES `mydb`.`linguaggio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
  */

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

	public QuizMultiplo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuizMultiplo(int id, String domanda, String corretta, String errore1, String errore2, Capitolo capitolo) {
		super();
		this.id = id;
		this.domanda = domanda;
		this.corretta = corretta;
		this.errore1 = errore1;
		this.errore2 = errore2;
		this.capitolo = capitolo;
	}
	
	
	public QuizMultiplo(String domanda, String corretta, String errore1, String errore2, Capitolo capitolo) {
		super();
		this.domanda = domanda;
		this.corretta = corretta;
		this.errore1 = errore1;
		this.errore2 = errore2;
		this.capitolo = capitolo;
	}
	

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

	@Override
	public String toString() {
		return "QuizMultiplo [id=" + id + ", domanda=" + domanda + ", corretta=" + corretta + ", errore1=" + errore1
				+ ", errore2=" + errore2 + ", capitolo=" + capitolo + "]";
	}
	
	
}
