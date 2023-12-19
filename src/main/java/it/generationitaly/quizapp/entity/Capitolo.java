package it.generationitaly.quizapp.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

/*-
 Table `mydb`.`capitolo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`capitolo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numero_capitolo` INT NOT NULL,
  `argomento` VARCHAR(500) NOT NULL,
  `linguaggio_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_capitolo_linguaggio1_idx` (`linguaggio_id` ASC) VISIBLE,
  CONSTRAINT `fk_capitolo_linguaggio1`
    FOREIGN KEY (`linguaggio_id`)
    REFERENCES `mydb`.`linguaggio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
 */

@Entity
@Table(name = "capitolo")
public class Capitolo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "numero_capitolo", nullable = false)
	private int numeroCapitolo;

	@Column(name = "argomento", length = 500, nullable = false)
	private String argomento;

	@ManyToOne
	@JoinColumn(name = "linguaggio_id", unique = true, nullable = false)
	private Linguaggio liguaggio;
	
	@OneToMany
	@JoinColumn(name = "quiz_multiplo_id")
    private List<QuizMultiplo> quizMultiplo = new ArrayList<QuizMultiplo>();
    
	@OneToMany
	@JoinColumn(name = "quiz_vero_falso_id")
	private List<QuizVeroFalso> quizVeroFalso = new ArrayList<QuizVeroFalso>();
	
    
	public Capitolo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Capitolo(int id, int numeroCapitolo, String argomento, Linguaggio liguaggio) {
		super();
		this.id = id;
		this.numeroCapitolo = numeroCapitolo;
		this.argomento = argomento;
		this.liguaggio = liguaggio;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumeroCapitolo() {
		return numeroCapitolo;
	}

	public void setNumeroCapitolo(int numeroCapitolo) {
		this.numeroCapitolo = numeroCapitolo;
	}

	public String getArgomento() {
		return argomento;
	}

	public void setArgomento(String argomento) {
		this.argomento = argomento;
	}

	public Linguaggio getLiguaggio() {
		return liguaggio;
	}

	public void setLiguaggio(Linguaggio liguaggio) {
		this.liguaggio = liguaggio;
	}
	

	public List<QuizMultiplo> getQuizMultiplo() {
		return quizMultiplo;
	}

	public void setQuizMultiplo(List<QuizMultiplo> quizMultiplo) {
		this.quizMultiplo = quizMultiplo;
	}

	public List<QuizVeroFalso> getQuizVeroFalso() {
		return quizVeroFalso;
	}

	public void setQuizVeroFalso(List<QuizVeroFalso> quizVeroFalso) {
		this.quizVeroFalso = quizVeroFalso;
	}

	@Override
	public String toString() {
		return "Capitolo [id=" + id + ", numeroCapitolo=" + numeroCapitolo + ", argomento=" + argomento + ", liguaggio="
				+ liguaggio + "]";
	}

}
