package org.service;

import java.util.List;

import org.dao.IOrderitemdrugDAO;

public class OrderitemdrugService implements IOrderitemdrugService {
  protected IOrderitemdrugDAO orderitemdrugDAO;
	public IOrderitemdrugDAO getOrderitemdrugDAO() {
	return orderitemdrugDAO;
}
public void setOrderitemdrugDAO(IOrderitemdrugDAO orderitemdrugDAO) {
	this.orderitemdrugDAO = orderitemdrugDAO;
}
	public List getOrderitemlist() {
		return orderitemdrugDAO.getOrderitemlist();
	}
	public List getOrderlist() {
		return orderitemdrugDAO.getOrderlist();
	}
	public List getOrderitemlist(Integer orderid) {
		return orderitemdrugDAO.getOrderitemlist(orderid);
	}
	@Override
	public List getOrderlist(Integer orderid) {
		return orderitemdrugDAO.getOrderlist(orderid);
	}
	@Override
	public void delOrderitemlist(Integer orderid) {
		orderitemdrugDAO.delOrderitemlist(orderid);	
	}
	@Override
	public void delOrderlist(Integer orderid) {
	   orderitemdrugDAO.delOrderlist(orderid);	
	}
}
