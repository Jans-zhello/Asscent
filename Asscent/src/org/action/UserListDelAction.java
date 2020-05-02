package org.action;

import org.service.IUserService;

import com.opensymphony.xwork2.ActionSupport;

public class UserListDelAction extends ActionSupport {
  private Integer id;
	private IUserService userService;
public IUserService getUserService() {
	return userService;
}

public Integer getId() {
	return id;
}

public void setId(Integer id) {
	this.id = id;
}

public void setUserService(IUserService userService) {
	this.userService = userService;
}
public String execute() throws Exception {
	userService.delUser(id);
	return SUCCESS;
}
}
