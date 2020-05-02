package org.action;
import java.util.List;
import java.util.Map;

import org.service.IOrderitemdrugService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class OrderListAction extends ActionSupport{
	private IOrderitemdrugService orderitemdrugService;

	public IOrderitemdrugService getOrderitemdrugService() {
		return orderitemdrugService;
	}

	public void setOrderitemdrugService(IOrderitemdrugService orderitemdrugService) {
		this.orderitemdrugService = orderitemdrugService;
	}
	public String execute() throws Exception {
		List orders2 = orderitemdrugService.getOrderlist();
		Map session = ActionContext.getContext().getSession();
		session.put("orders2", orders2);
		return SUCCESS;
	}
}