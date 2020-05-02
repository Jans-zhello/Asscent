package org.action;
import java.util.List;
import java.util.Map;
import org.service.IDrugcatalogService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class BrowseCatalogAction extends ActionSupport {
 protected IDrugcatalogService drugcatalogService;
 public void setDrugcatalogService(IDrugcatalogService drugcatalogService) {
	this.drugcatalogService = drugcatalogService;
}
 public String execute() throws Exception {
	List catalogs =  drugcatalogService.getAllCatalogs();
	Map request = (Map)ActionContext.getContext().get("request");
	request.put("catalogs", catalogs);
	return SUCCESS;
 }
}