package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.CommentaireDao;
import com.app.service.CommentaireService;
import com.bo.Commentaire;
@Service
@Transactional
public class CommentaireServiceImpl implements CommentaireService{
	
	@Autowired
	private CommentaireDao commentaireDao;

	public List<Commentaire> findListCommentaireByVille(Long id) {
		List<Commentaire> list=commentaireDao.getEntityByColValue("Commentaire", "ville", id);
		if (list == null || list.size()==0)
		{
			return null;
		}
		
		return list;
	}

	
	public void addCommentaire(Commentaire c) {
		commentaireDao.create(c);
	}
	

	

	
	

}
