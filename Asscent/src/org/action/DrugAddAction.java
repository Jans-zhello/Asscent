package org.action;

import org.model.Drug;
import org.service.IDrugService;

import com.opensymphony.xwork2.ActionSupport;

public class DrugAddAction extends ActionSupport {
 private IDrugService drugService;
private String drugname;
 private Integer price;
 private String picture;
 private Integer catalogid;
public IDrugService getDrugService() {
	return drugService;
}
public void setDrugService(IDrugService drugService) {
	this.drugService = drugService;
}
public String getDrugname() {
	return drugname;
}
public void setDrugname(String drugname) {
	this.drugname = drugname;
}
public Integer getPrice() {
	return price;
}
public void setPrice(Integer price) {
	this.price = price;
}
public String getPicture() {
	return picture;
}
public void setPicture(String picture) {
	this.picture = picture;
}
public Integer getCatalogid() {
	return catalogid;
}
public void setCatalogid(Integer catalogid) {
	this.catalogid = catalogid;
}
public String execute() throws Exception {
	Drug drug = new Drug();
	drug.setDrugname(drugname);
	drug.setPrice(price);
	drug.setPicture(picture);
	drug.setCatalogid(catalogid);
	drugService.saveDrug(drug);
	return SUCCESS;
}
}
