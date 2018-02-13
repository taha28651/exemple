package com.bo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Commentaire {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String contenu;
	private Long ville;
	private float polarite;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getContenu() {
		return contenu;
	}
	public void setContenu(String contenu) {
		this.contenu = contenu;
	}
	public Long getVille() {
		return ville;
	}
	public void setVille(Long ville) {
		this.ville = ville;
	}

	public float getPolarite() {
		return polarite;
	}
	public void setPolarite(float polarite) {
		this.polarite = polarite;
	}
	public Commentaire(String contenu, Long ville, float polarite) {
		this.contenu = contenu;
		this.ville = ville;
		this.polarite = polarite;
	}
	

}
