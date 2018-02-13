package com.app.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;


public abstract class BaseAction extends ActionSupport {

	protected static final String MESSAGES = "messages";


	protected void saveMessageInSession(String pMsg) {

		HttpSession session = getSession();

		List<String> lMessages = (List<String>) session.getAttribute(MESSAGES);

		if (lMessages == null) {
			lMessages = new ArrayList<String>();
		}

		lMessages.add(pMsg);

		session.setAttribute(MESSAGES, lMessages);
	}

	

	protected void saveMessageInRequest(String pMsg) {

		HttpServletRequest  rq=  getRequest()  ;

		List<String> lMessages = (List<String>) rq.getAttribute(MESSAGES);

		if (lMessages == null) {
			lMessages = new ArrayList<String>();
		}

		lMessages.add(pMsg);

		rq.setAttribute(MESSAGES, lMessages);
	}

	protected HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	
	protected HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}


	protected HttpSession getSession() {
		return getRequest().getSession();
	}
}
