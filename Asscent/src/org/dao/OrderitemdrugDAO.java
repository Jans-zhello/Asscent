package org.dao;

import java.util.List;

import org.model.Orderitemdrug;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class OrderitemdrugDAO  extends HibernateDaoSupport implements IOrderitemdrugDAO{
	public List getOrderitemlist() {
		List orders = this.getHibernateTemplate().find("from Orderitemdrug o ");
		return orders; 
	}
	public List getOrderlist() {
		List orders = this.getHibernateTemplate().find("from Orderdrug o");	
		return orders;
	}
	public List getOrderitemlist(Integer orderid) {
	    List orders = this.getHibernateTemplate().find("from Orderdrug o where o.orderid=?",orderid);
		return orders;
	}
	public List getOrderlist(Integer orderid) {
		List orders = this.getHibernateTemplate().find("from Orderitemdrug oid where oid.orderid=?",orderid);
		return orders;
	}
	public void delOrderitemlist(Integer orderid) {
		List orders = this.getHibernateTemplate().find("from Orderitemdrug oid where oid.orderid=?",orderid); 
		this.getHibernateTemplate().deleteAll(orders);
	}
	public void delOrderlist(Integer orderid) {
		List orders = this.getHibernateTemplate().find("from Orderdrug o where o.orderid=?",orderid);
		this.getHibernateTemplate().deleteAll(orders);
	}
}