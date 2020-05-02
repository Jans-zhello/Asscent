package org.dao;
import java.util.List;
import org.dao.IUserDAO;
import org.model.User;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
public class UserDAO extends HibernateDaoSupport implements IUserDAO{
	//ע���û����浽���ݿ�
	public void saveUser(User user){
		this.getHibernateTemplate().save(user);
	}
	//��¼�û������ݿ����
	public User validateUser(String username,String password){
		String str[]={username,password};
		List list=this.getHibernateTemplate().find("from User u where u.username=? and u.password=?",str);
		if(list.size()>0){
			User user=(User)list.get(0);
			return user;
		}else
			return null;
	}
	public List getUsers() {
		List users = this.getHibernateTemplate().find("from User u");
		return users;
	}
	public List getUser(Integer id) {
	   List user = this.getHibernateTemplate().find("from User u where u.id=?",id);
		return user;
	}
	public void delUser(Integer id) {
		List user = this.getHibernateTemplate().find("from User u where u.id=?",id);
	    this.getHibernateTemplate().deleteAll(user);
	}
}

