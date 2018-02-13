package com.app.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;
import org.springframework.beans.factory.annotation.Autowired;

import com.app.service.CommentaireService;
import com.app.service.GalerieService;
import com.app.service.VilleService;
import com.bo.Commentaire;
import com.bo.Galerie;
import com.bo.Ville;

@ResultPath("/page/")
public class VilleAction extends BaseAction{
	
	private Ville ville;

	private List<Ville> listVille;

	private Commentaire commentaire; 
	
	private List<Galerie> listgalerie;
	
	private List<Commentaire> listcommentaire;
	
	public Long var;
	
	@Autowired
	private VilleService villeService;
	
	@Autowired
	private GalerieService galerieService;
	
	@Autowired
	private CommentaireService commentaireService;
	
	
	@Action(value = "getAllVille", results = { @Result(name = "success", location = "page_client.jsp") })
	public String getAllVille()
	{
		listVille = villeService.findAll();

		return SUCCESS;
	}

	@Action(value = "detailVille", results = { @Result(name = "success", location = "detail.jsp") })
	public String detailVille()
	{
		ville = villeService.findVille(var);
		listgalerie = galerieService.findByVille(var);
		listcommentaire =commentaireService.findListCommentaireByVille(var);
		return SUCCESS;
	}
	
	
	@Action(value = "addCommentaire", results = { 
			@Result(name = "success",type="redirectAction" ,location = "getAllVille"),
			@Result(name = "input", location = "detail.jsp")
			})
	public String addCommentaire() {
//		commentaire = new Commentaire(commentaire.getContenu(), var, 1);
//
//		if (commentaire.getContenu() != null) {
//			
//			commentaireService.addCommentaire(commentaire);
//			return SUCCESS;
//
//		}else
//		{
//			return "input";
//		}

		return SUCCESS;

			
		
		
	}
	
	@Action(value = "gestionDes", results = { @Result(name = "success", location ="gestionDest.jsp") })
	public String gestionDes() {
		return SUCCESS;

	}
	
	@Action(value = "gestionUser", results = { @Result(name = "success", location ="gestionUsers.jsp") })
	public String gestionUser() {
		return SUCCESS;

	}
	public Ville getVille() {
		return ville;
	}

	public void setVille(Ville ville) {
		this.ville = ville;
	}

	public List<Ville> getListVille() {
		return listVille;
	}

	public void setListVille(List<Ville> listVille) {
		this.listVille = listVille;
	}
	
	public List<Galerie> getListgalerie() {
		return listgalerie;
	}

	public void setListgalerie(List<Galerie> listgalerie) {
		this.listgalerie = listgalerie;
	}

	public List<Commentaire> getListcommentaire() {
		return listcommentaire;
	}

	public void setListcommentaire(List<Commentaire> listcommentaire) {
		this.listcommentaire = listcommentaire;
	}



}
