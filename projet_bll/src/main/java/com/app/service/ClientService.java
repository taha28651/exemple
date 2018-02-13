package com.app.service;


import java.util.List;

import com.bo.Client;


public interface ClientService {

	void addClient(Client client);
	public Client findByClient(String username);
	List<Client> getAll();


}
