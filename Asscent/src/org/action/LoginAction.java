package org.action;
import java.util.Map;
import org.model.User;
import org.service.IUserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class LoginAction extends ActionSupport{
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
		User u = userService.validateUser(user.getUsername(),user.getPassword());
		if (u!=null) {
			if(user.getUsername().equals("admin")&&user.getPassword().equals("123456")) {
				Map session = ActionContext.getContext().getSession();
			    session.put("user", u);
				return "admin";	
			}
			Map session = ActionContext.getContext().getSession();
		    session.put("user", u);
		    return SUCCESS;	
		}
	    return ERROR;
	}
}
