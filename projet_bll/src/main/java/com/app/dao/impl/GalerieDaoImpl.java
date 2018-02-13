package com.app.dao.impl;

import org.springframework.stereotype.Repository;

import com.app.dao.GalerieDao;
import com.bo.Galerie;
import com.genericdao.impl.HibernateSpringGenericDaoImpl;
@Repository
public class GalerieDaoImpl extends HibernateSpringGenericDaoImpl<Galerie, Long> implements GalerieDao{

	public GalerieDaoImpl() {
		super(Galerie.class);
	}
	

}
