package org.action;
import java.util.Map;
import org.model.Drug;
import org.model.Orderitemdrug;
import org.service.IDrugService;
import org.util.Cart;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class OpenCartAction extends ActionSupport {
private int drugid;
private int quantity;
protected IDrugService drugService;
public int getDrugid() {
	return drugid;
}
public void setDrugid(int drugid) {
	this.drugid = drugid;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public IDrugService getDrugService() {
	return drugService;
}
public void setDrugService(IDrugService drugService) {
	this.drugService = drugService;
}
public String execute() throws Exception {
	Map session= ActionContext.getContext().getSession();
	Cart cart = (Cart)session.get("cart");
	cart.updateCart(drugid,this.getQuantity());
	session.put("cart", cart);
	return SUCCESS;
}
}