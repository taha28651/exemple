package com.app.dao.impl;


import org.springframework.stereotype.Repository;

import com.app.dao.ClientDao;
import com.bo.Client;
import com.genericdao.impl.HibernateSpringGenericDaoImpl;

@Repository
public class ClientDaoImpl extends HibernateSpringGenericDaoImpl<Client, Long> implements ClientDao {

	public ClientDaoImpl() {
		super(Client.class);
	}

	



}
