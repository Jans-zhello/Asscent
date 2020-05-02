package org.action;
import java.sql.Timestamp;
import org.model.User;
import org.service.IUserService;
import com.opensymphony.xwork2.ActionSupport;
public class UserListAddAction extends ActionSupport {
	private String username;
	private String password;
	private String sex;
	private String phone;
	private String address;
	private Timestamp rdate;
  private IUserService userService;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Timestamp getRdate() {
		return rdate;
	}
	public void setRdate(Timestamp rdate) {
		this.rdate = rdate;
	}
public IUserService getUserService() {
	return userService;
}
public void setUserService(IUserService userService) {
	this.userService = userService;
}
public String execute() throws Exception {
	User user = new User();
	user.setUsername(username);
	user.setPassword(password);
	user.setSex(sex);
	user.setPhone(phone);
	user.setAddress(address);
	user.setRdate(new Timestamp(System.currentTimeMillis()));
	userService.saveUser(user);
	return SUCCESS;	
}
}
