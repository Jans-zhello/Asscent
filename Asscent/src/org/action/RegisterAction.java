package org.action;
import java.sql.Timestamp;
import org.model.User;
import org.service.IUserService;
import com.opensymphony.xwork2.ActionSupport;
public class RegisterAction extends ActionSupport {
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
		User user1 = new User();
		user1.setUsername(user.getUsername());
		user1.setPassword(user.getPassword());
		user1.setSex(user.getSex());
		user1.setPhone(user.getPhone());
		user1.setAddress(user.getAddress());
		user1.setRdate(new Timestamp(System.currentTimeMillis()));
		userService.saveUser(user1);
		return SUCCESS;
	}
	public void validate(){
		if (this.user.getUsername()==null||this.user.getUsername().trim().equals("")) {
			addFieldError("user.username","ÇëÌîĞ´ÓÃ»§Ãû");
			return ;
		}
		if (this.user.getPassword()==null||this.user.getPassword().trim().equals("")) {
			addFieldError("user.password","ÇëÌîĞ´ÃÜÂë");
			return ;
		}
		if (this.user.getSex()==null||this.user.getSex().trim().equals("")) {
			addFieldError("user.sex","ÇëÌîĞ´ĞÔ±ğ");
			return ;
		}
		if (this.user.getPhone()==null||this.user.getPhone().trim().equals("")) {
			addFieldError("user.phone","ÇëÌîĞ´µç»°");
			return ;
		}
		if (this.user.getAddress()==null||this.user.getAddress().trim().equals("")) {
			addFieldError("user.address","ÇëÌîĞ´µØÖ·");
			return;
		}
	}
}
