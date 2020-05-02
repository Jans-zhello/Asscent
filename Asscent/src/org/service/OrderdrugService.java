package org.service;

import java.util.List;

import org.dao.IOrderdrugDAO;
import org.model.Orderdrug;
import org.model.Orderitemdrug;
import org.model.User;
public class OrderdrugService implements IOrderdrugService {
    private IOrderdrugDAO orderdrugDAO;
	public IOrderdrugDAO getOrderdrugDAO() {
	return orderdrugDAO;
}
    public void setOrderdrugDAO(IOrderdrugDAO orderdrugDAO) {
	this.orderdrugDAO = orderdrugDAO;
}
	public Orderdrug saveOrderdrug(Orderdrug orderdrug) {
		return orderdrugDAO.saveOrderdrug(orderdrug);
	}
	public Orderitemdrug saveOrderitemdrug(Orderitemdrug orderitemdrug) {
		
		return orderdrugDAO.saveOrderitemdrug(orderitemdrug);
	}
	public User getUser(Integer id) {
		return orderdrugDAO.getUser(id);
	}
}
