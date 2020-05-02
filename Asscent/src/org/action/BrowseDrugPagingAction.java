package org.action;
import java.util.List;
import java.util.Map;
import org.service.IDrugService;
import org.util.Pager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class BrowseDrugPagingAction extends ActionSupport {
 protected Integer catalogid;
 private Integer currentPage=1;
 protected IDrugService drugService;
public Integer getCatalogid() {
	return catalogid;
}
public IDrugService getDrugService() {
	return drugService;
}
public void setDrugService(IDrugService drugService) {
	this.drugService = drugService;
}
public void setCatalogid(Integer catalogid) {
	this.catalogid = catalogid;
}
public Integer getCurrentPage() {
	return currentPage;
}
public void setCurrentPage(Integer currentPage) {
	this.currentPage = currentPage;
}
public String execute() throws Exception {
	int totalSize= drugService.getTotalByDrug(catalogid);
	Pager pager = new Pager(currentPage, totalSize);
	List drugs = drugService.getDrugByCatalogidPaging(catalogid, currentPage,pager.getPageSize());
    Map request = (Map) ActionContext.getContext().get("request");
    request.put("drugs", drugs);
    request.put("pager", pager);
    Map session = ActionContext.getContext().getSession();
    session.put("catalogid", catalogid);
    return SUCCESS;
  }
}