package org.action;
import java.util.List;
import org.service.IUserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class UserListAction  extends ActionSupport{
 private IUserService userService;

public IUserService getUserService() {
	return userService;
}
public void setUserService(IUserService userService) {
	this.userService = userService;
}
public String execute() throws Exception {
	List users = userService.getUsers();
	ActionContext.getContext().getSession().put("users",users);
	return SUCCESS;
}
}
