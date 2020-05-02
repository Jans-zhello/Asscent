package org.action;

import java.util.List;

import org.service.IUserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserSearchAction extends ActionSupport{
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
	List users2 = userService.getUser(id);
	ActionContext.getContext().getSession().put("users2",users2);
    return SUCCESS;
}
}
