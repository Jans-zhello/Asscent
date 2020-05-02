package org.action;
import java.util.List;
import java.util.Map;
import org.service.IDrugService;
import org.util.Pager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class SearchDrugAction extends ActionSupport{
 protected IDrugService drugService;
 private String drugname;
 private Integer currentPage=1;
 public Integer getCurrentPage(){
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
public String getDrugname() {
	return drugname;
}
public void setDrugname(String drugname) {
	this.drugname = drugname;
}
public String execute() throws Exception {
	int totalSize= drugService.getTotalRequireDrug(drugname);
	Pager pager = new Pager(currentPage, totalSize);
	List drugs = drugService.getRequireDrugByName(drugname,currentPage,pager.getPageSize());
	Map request = (Map) ActionContext.getContext().get("request");
    request.put("drugs", drugs);
    request.put("pager", pager);
    Map session = ActionContext.getContext().getSession();
    session.put("drugname",drugname);
	System.out.println("¸öÊý: "+totalSize);
	return SUCCESS;
}
}
