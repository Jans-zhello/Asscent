package org.action;

import org.service.IDrugService;

import com.opensymphony.xwork2.ActionSupport;

public class DrugListDelAction extends ActionSupport{
 private IDrugService drugService;
 private Integer drugid; 
public IDrugService getDrugService() {
	return drugService;
}

public void setDrugService(IDrugService drugService) {
	this.drugService = drugService;
}

public Integer getDrugid() {
	return drugid;
}

public void setDrugid(Integer drugid) {
	this.drugid = drugid;
}
public String execute() throws Exception {
	drugService.delDrug(drugid);
	return SUCCESS;
}
}
