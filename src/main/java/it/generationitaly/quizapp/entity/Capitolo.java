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

	@ManyToOne
	@JoinColumn(name = "linguaggio_id", unique = true, nullable = false)
	private Linguaggio linguaggio;
	
	@Column(name = "nome", nullable = false, length = 45)
	private String nome;
	
	@OneToMany(mappedBy = "capitolo", fetch = FetchType.EAGER)
    private List<QuizMultiplo> quizMultiplo = new ArrayList<QuizMultiplo>();
    
	@OneToMany(mappedBy = "capitolo", fetch = FetchType.EAGER)
	private List<QuizVeroFalso> quizVeroFalso = new ArrayList<QuizVeroFalso>();
	
	
	@OneToMany(mappedBy = "capitolo", fetch = FetchType.EAGER)
	private List<Contenuto> contenuto = new ArrayList<Contenuto>();
	
    
	public Capitolo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Capitolo(int id, String nome, Linguaggio liguaggio) {
		super();
		this.id = id;
		this.nome = nome;
		this.linguaggio = liguaggio;
	}

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

	public Linguaggio getLiguaggio() {
		return linguaggio;
	}

	public void setLiguaggio(Linguaggio liguaggio) {
		this.linguaggio = liguaggio;
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
	
	

	public List<Contenuto> getContenuto() {
		return contenuto;
	}

	public void setContenuto(List<Contenuto> contenuto) {
		this.contenuto = contenuto;
	}

	public void setQuizVeroFalso(List<QuizVeroFalso> quizVeroFalso) {
		this.quizVeroFalso = quizVeroFalso;
	}



}
