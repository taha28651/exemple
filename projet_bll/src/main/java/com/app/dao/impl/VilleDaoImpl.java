package com.app.dao.impl;

import org.springframework.stereotype.Repository;

import com.app.dao.VilleDao;
import com.bo.Ville;
import com.genericdao.impl.HibernateSpringGenericDaoImpl;
@Repository
public class VilleDaoImpl extends HibernateSpringGenericDaoImpl<Ville, Long> implements VilleDao{

	public VilleDaoImpl() {
		super(Ville.class);
	}
	

}
