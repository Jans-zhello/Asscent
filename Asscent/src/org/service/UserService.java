package org.service;
import java.util.List;

import org.dao.IUserDAO;
import org.model.User;
import org.service.IUserService;
public class UserService implements IUserService{
	private IUserDAO userDAO;
	public void setUserDAO(IUserDAO userDAO){
		this.userDAO=userDAO;
	}
	public void saveUser(User user){
		this.userDAO.saveUser(user);
	}
	public User validateUser(String username,String password){
		return userDAO.validateUser(username, password);
	}
	public List getUsers() {
		return userDAO.getUsers();
	}
	public List getUser(Integer id) {
		return userDAO.getUser(id);
	}
	public void delUser(Integer id) {
		userDAO.delUser(id);
	}
}

