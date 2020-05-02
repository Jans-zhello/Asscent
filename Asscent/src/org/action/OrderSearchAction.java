package org.action;
import java.util.List;
import java.util.Map;
import org.service.IOrderitemdrugService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class OrderSearchAction extends ActionSupport {
	private IOrderitemdrugService orderitemdrugService;
	private Integer orderid;
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public IOrderitemdrugService getOrderitemdrugService() {
		return orderitemdrugService;
	}
	public void setOrderitemdrugService(IOrderitemdrugService orderitemdrugService) {
		this.orderitemdrugService = orderitemdrugService;
	}
	public String execute() throws Exception {
		List orders = orderitemdrugService.getOrderitemlist(orderid);
		List orders2 = orderitemdrugService.getOrderlist(orderid);
		Map session = ActionContext.getContext().getSession();
		session.put("orders",orders);
		session.put("orders2", orders2);
		return SUCCESS;
	}
}
