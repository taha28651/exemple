package com.app.dao.impl;

import org.springframework.stereotype.Repository;

import com.app.dao.CommentaireDao;
import com.bo.Commentaire;
import com.genericdao.impl.HibernateSpringGenericDaoImpl;
@Repository
public class CommentaireDaoImpl extends HibernateSpringGenericDaoImpl<Commentaire, Long> implements CommentaireDao{

	public CommentaireDaoImpl() {
		super(Commentaire.class);
	}
	

}
