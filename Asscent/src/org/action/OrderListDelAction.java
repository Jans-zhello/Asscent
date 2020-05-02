package org.action;

import java.util.List;

import org.service.IOrderitemdrugService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class OrderListDelAction extends ActionSupport{
	private IOrderitemdrugService orderitemdrugService;
	private Integer orderid;
	public IOrderitemdrugService getOrderitemdrugService() {
		return orderitemdrugService;
	}
	public void setOrderitemdrugService(IOrderitemdrugService orderitemdrugService) {
		this.orderitemdrugService = orderitemdrugService;
	}
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public String execute() throws Exception {
		orderitemdrugService.delOrderlist(orderid);
		orderitemdrugService.delOrderitemlist(orderid);
		ActionContext.getContext().getSession().remove("orders");
		ActionContext.getContext().getSession().remove("orders2");
		return SUCCESS;
	}
}