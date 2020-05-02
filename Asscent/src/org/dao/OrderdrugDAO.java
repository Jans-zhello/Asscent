package org.dao;
import java.util.List;
import org.model.Orderdrug;
import org.model.Orderitemdrug;
import org.model.User;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
public class OrderdrugDAO extends HibernateDaoSupport implements IOrderdrugDAO {
	public Orderdrug saveOrderdrug(Orderdrug orderdrug){
		this.getHibernateTemplate().save(orderdrug);
		return orderdrug;
	}
	public Orderitemdrug saveOrderitemdrug(Orderitemdrug orderitemdrug) {
		this.getHibernateTemplate().save(orderitemdrug);
		return orderitemdrug;
	}
	//�ҵ���Ӷ�������idָ����user���㱣��
	public User getUser(Integer id) {
		List u = this.getHibernateTemplate().find("from User u where u.id=?",id);
		return (User) u.get(0);
	}	
}