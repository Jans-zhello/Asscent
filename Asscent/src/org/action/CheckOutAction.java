package org.action;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import org.model.Orderdrug;
import org.model.Orderitemdrug;
import org.model.User;
import org.service.IOrderdrugService;
import org.util.Cart;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class CheckOutAction extends ActionSupport{
private IOrderdrugService orderdrugService;
public IOrderdrugService getOrderdrugService() {
	return orderdrugService;
}
public void setOrderdrugService(IOrderdrugService orderdrugService) {
	this.orderdrugService = orderdrugService;
}
public String execute() throws Exception {
	Map session=ActionContext.getContext().getSession();
	User user=(User)session.get("user");
	Cart cart=(Cart)session.get("cart");
	Orderdrug orderdrug=new Orderdrug();
	orderdrug.setOrderdate(new Date(System.currentTimeMillis()));
	orderdrug.setUser(user);
	orderdrugService.saveOrderdrug(orderdrug);
	for(Iterator it =cart.getItems().values().iterator();it.hasNext();){
	   Orderitemdrug orderitemdrug=(Orderitemdrug)it.next();
	   orderitemdrug.setOrderid(orderdrug.getOrderid());
	   orderdrugService.saveOrderitemdrug(orderitemdrug);
	}
	Map request=(Map)ActionContext.getContext().get("request");
	request.put("orderdrug",orderdrug);
	return SUCCESS;	
}
}