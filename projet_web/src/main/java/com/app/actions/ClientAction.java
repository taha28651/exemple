package com.app.actions;


import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;
import org.springframework.beans.factory.annotation.Autowired;
import com.app.service.ClientService;
import com.bo.Client;

@ResultPath("/page/")
public class ClientAction extends BaseAction {

	private Client clientt;
	
	public long id_user;
	
	public void setPassword()
	{
		 clientt.setPassword(clientt.getPassword());;
	}
	
	private List<Client> listClient;

	@Autowired
	private ClientService clientService;
	
	
	
	@Action(value = "getClient", results = { @Result(name = "success", location = "image.jsp") })
	public String getClient()
	{
		listClient = clientService.getAll();

		return SUCCESS;
	}
	
	public List<Client> getListClient() {
		listClient = clientService.getAll();
		return listClient;
	}

	public void setListClient(List<Client> listClient) {
		this.listClient = listClient;
	}



	
	@Action(value = "contact", results = { @Result(name = "success", location ="contact.jsp") })
	public String contact() {
		return SUCCESS;

	}
	
	
	@Action(value = "login", results = { @Result(name = "success", location ="login.jsp") })
	public String login() {
		return SUCCESS;

	}
	
	@Action(value = "signup", results = { @Result(name = "success", location ="signup.jsp") })
	public String signup() {

		return SUCCESS;

	}
	


	@Action(value = "addClient", results = { 
			@Result(name = "success", location = "login.jsp"),
			@Result(name = "input", location = "signup.jsp")
			})
	public String addClient() {

		if (clientService.findByClient(clientt.getUser_name()) != null)
		{
			return "input";

		}else
		{
			clientService.addClient(clientt);

			return SUCCESS;

		}

	}

	@Action(value = "connecter", results = {
			@Result(name = "SUCCESS1", location ="page_admin.jsp"),
			@Result(name = "SUCCESS2",type = "redirectAction", location = "getAllVille"),
			@Result(name = "input", location ="login.jsp")
	})
	public String connecter() {

		Client c = clientService.findByClient(clientt.getUser_name());
		
		if ((clientt.getPassword().equals(c.getPassword())) && (c.getType()==1))
		{
			
			return "SUCCESS1";

		}else if ((clientt.getPassword().equals(c.getPassword())) && (c.getType()==2))
		{
			
			return "SUCCESS2";

		}
		{
			return "input";
		}

	}

	public Client getClientt() {
		if (clientt == null)
			clientt = new Client();
		return clientt;
	}



	public void setClientt(Client clientt) {
		this.clientt = clientt;
	}







}
