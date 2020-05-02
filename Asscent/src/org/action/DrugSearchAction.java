package org.action;
import java.util.List;
import org.service.IDrugService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class DrugSearchAction extends ActionSupport{
 private Integer drugid;
 private IDrugService drugService;
public Integer getDrugid() {
	return drugid;
}
public void setDrugid(Integer drugid) {
	this.drugid = drugid;
}
public IDrugService getDrugService() {
	return drugService;
}
public void setDrugService(IDrugService drugService) {
	this.drugService = drugService;
}
public String execute() throws Exception {
	List drugs = drugService.getDrug(drugid);
	ActionContext.getContext().getSession().put("drugs",drugs);
    return SUCCESS;
}	
}
