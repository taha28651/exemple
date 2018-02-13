package com.app.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.ClientDao;
import com.app.service.ClientService;
import com.bo.Client;


@Service
@Transactional
public class ClientServiceImpl<T> implements ClientService {

	@Autowired
	private ClientDao clientDao;
	
	public void addClient(Client client) {

		clientDao.create(client);

	}
	
	public Client findByClient(String username)
	{
		List<Client> list= clientDao.getEntityByColValue("Client","user_name",username);
		if (list == null || list.size()==0)
		{
			return null;
		}
		return list.get(0);
	}

	public List<Client> getAll() {
		
		return clientDao.getAll();
	}

	


}
