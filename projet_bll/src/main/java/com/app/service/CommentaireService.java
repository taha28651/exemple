package com.app.service;

import java.util.List;

import com.bo.Commentaire;


public interface CommentaireService {
	public List<Commentaire> findListCommentaireByVille(Long id);
	public void addCommentaire(Commentaire c);

}
