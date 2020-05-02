package org.action;

import java.util.Date;
import org.model.Orderdrug;
import org.model.Orderitemdrug;
import org.service.IOrderdrugService;
import com.opensymphony.xwork2.ActionSupport;
public class OrderAddAction extends ActionSupport{
	private Integer id;
	private Integer drugid;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getDrugid() {
		return drugid;
	}
	public void setDrugid(Integer drugid) {
		this.drugid = drugid;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	private Integer quantity;
	private IOrderdrugService orderdrugService;
	public IOrderdrugService getOrderdrugService() {
		return orderdrugService;
	}
	public void setOrderdrugService(IOrderdrugService orderdrugService) {
		this.orderdrugService = orderdrugService;
	}
	public String execute() throws Exception {
          Orderdrug orderdrug = new Orderdrug();
          orderdrug.setOrderdate(new Date(System.currentTimeMillis()));
          orderdrug.setUser(orderdrugService.getUser(id));
          orderdrugService.saveOrderdrug(orderdrug);
          Orderitemdrug orderitemdrug = new Orderitemdrug();
          orderitemdrug.setQuantity(quantity);
          orderitemdrug.setOrderid(orderdrug.getOrderid());
          orderitemdrug.setDrugid(drugid);
          orderdrugService.saveOrderitemdrug(orderitemdrug);
          return SUCCESS;
    }
}
