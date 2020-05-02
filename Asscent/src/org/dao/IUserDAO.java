package org.dao;
import java.util.List;

import org.model.User;
public interface IUserDAO {
	public void saveUser(User user);
	public User validateUser(String username,String password);
    public List getUsers();
    public List getUser(Integer id);
    public void delUser(Integer id);
}