package it.generationitaly.quizapp.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/*–
  Table `mydb`.`linguaggio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`linguaggio` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
 */

@Entity
@Table(name = "linguaggio")
public class Linguaggio {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "nome", length = 45, nullable = false)
	private String nome;

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

	@Override
	public String toString() {
		return "Linguaggio [id=" + id + ", nome=" + nome + "]";
	}

}
