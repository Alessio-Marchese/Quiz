package it.generationitaly.quizapp.entity;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

/*
CREATE TABLE IF NOT EXISTS `mydb`.`utente_has_badge` (
  `utente_id` INT NOT NULL,
  `badge_id` INT NOT NULL,
  `conseguimento_badge` DATE NULL,
 * */

@Entity
@Table(name = "utente_has_badge")
public class UtenteHasBadge {
	
	@ManyToOne
	@JoinColumn(name = "utente_id", unique = true, nullable = false)
	private Utente utenteId;
	
	@ManyToOne
	@JoinColumn(name = "badge_id", unique = true, nullable = false)
	private Badge badgeId;
	
	@Column(name = "conseguimento_badge")
	@Temporal(TemporalType.DATE)
	private Date conseguimentoBadge;

	public UtenteHasBadge() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UtenteHasBadge(Utente utenteId, Badge badgeId, Date conseguimentoBadge) {
		super();
		this.utenteId = utenteId;
		this.badgeId = badgeId;
		this.conseguimentoBadge = conseguimentoBadge;
	}

	public Utente getUtenteId() {
		return utenteId;
	}

	public void setUtenteId(Utente utenteId) {
		this.utenteId = utenteId;
	}

	public Badge getBadgeId() {
		return badgeId;
	}

	public void setBadgeId(Badge badgeId) {
		this.badgeId = badgeId;
	}

	public Date getConseguimentoBadge() {
		return conseguimentoBadge;
	}

	public void setConseguimentoBadge(Date conseguimentoBadge) {
		this.conseguimentoBadge = conseguimentoBadge;
	}

	@Override
	public String toString() {
		return "UtenteHasBadge [utenteId=" + utenteId + ", badgeId=" + badgeId + ", conseguimentoBadge="
				+ conseguimentoBadge + "]";
	}
	
	
}
