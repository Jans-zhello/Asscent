package org.action;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.model.Drug;
import org.model.Orderitemdrug;
import org.service.IDrugService;
import org.util.Cart;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class AddToCartAction extends ActionSupport {
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
	Drug drug = drugService.getDrugById(drugid);
	Orderitemdrug orderitemdrug = new Orderitemdrug();
	orderitemdrug.setDrug(drug);
	orderitemdrug.setQuantity(quantity);
	orderitemdrug.setDrugid(drugid);
	Map session = ActionContext.getContext().getSession();
	Cart cart = (Cart)session.get("cart");
	if (cart==null) {
		cart = new Cart();
	}
	cart.addDrug(drugid, orderitemdrug);
	session.put("cart", cart);
	return SUCCESS;
}
}
