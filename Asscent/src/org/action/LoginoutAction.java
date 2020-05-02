package org.action;

import java.util.Map;

import org.model.User;
import org.service.IUserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginoutAction extends ActionSupport {
	protected User user;
	protected IUserService userService;
	public User getUser(){
		return this.user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	public String execute() throws Exception {
		    //ÓÃ»§×¢Ïú
			Map session=ActionContext.getContext().getSession();
			session.remove("user");
			session.remove("cart");
			return SUCCESS;		
	}
}
