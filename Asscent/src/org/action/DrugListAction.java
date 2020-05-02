package org.action;
import java.util.List;
import org.service.IDrugService;
import org.util.Pager2;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class DrugListAction extends ActionSupport{
 private Integer currentPage=1;
 private IDrugService drugService;
public Integer getCurrentPage() {
	return currentPage;
}
public void setCurrentPage(Integer currentPage) {
	this.currentPage = currentPage;
}
public IDrugService getDrugService() {
	return drugService;
}
public void setDrugService(IDrugService drugService) {
	this.drugService = drugService;
}
public String execute() throws Exception {
	int totalSize= drugService.getDrug();
	Pager2 pager2 = new Pager2(currentPage, totalSize);
	List drugs = drugService.getDrug(currentPage,pager2.getPageSize());
	List drugcatalogs = drugService.getDrugcatalog(); 
	ActionContext.getContext().getSession().put("pager2",pager2);
	ActionContext.getContext().getSession().put("drugs",drugs);
	ActionContext.getContext().getSession().put("drugcatalogs",drugcatalogs);
	return SUCCESS;
}
}
