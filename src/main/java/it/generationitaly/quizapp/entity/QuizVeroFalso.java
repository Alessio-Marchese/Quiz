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
  Table `mydb`.`quiz_vero_falso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`quiz_vero_falso` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `domanda` VARCHAR(100) NOT NULL,
  `bool` TINYINT NOT NULL,
  `linguaggio_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_quiz_linguaggio1_idx` (`linguaggio_id` ASC) VISIBLE,
  CONSTRAINT `fk_quiz_linguaggio1`
    FOREIGN KEY (`linguaggio_id`)
    REFERENCES `mydb`.`linguaggio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
 * */

@Entity
@Table(name = "quiz_vero_falso")
public class QuizVeroFalso {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "domanda", length = 100, nullable = false)
	private String domanda;

	@Column(name = "bool", nullable = false)
	private boolean bool;

	@ManyToOne
	@JoinColumn(name = "linguaggio_id", unique = true, nullable = false)
	private Linguaggio liguaggio;

	public QuizVeroFalso() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuizVeroFalso(int id, String domanda, boolean bool, Linguaggio liguaggio) {
		super();
		this.id = id;
		this.domanda = domanda;
		this.bool = bool;
		this.liguaggio = liguaggio;
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

	public boolean isBool() {
		return bool;
	}

	public void setBool(boolean bool) {
		this.bool = bool;
	}

	public Linguaggio getLiguaggio() {
		return liguaggio;
	}

	public void setLiguaggio(Linguaggio liguaggio) {
		this.liguaggio = liguaggio;
	}

	@Override
	public String toString() {
		return "QuizVeroFalso [id=" + id + ", domanda=" + domanda + ", bool=" + bool + ", liguaggio=" + liguaggio + "]";
	}

}
