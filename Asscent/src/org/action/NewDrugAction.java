package org.action;

import java.util.List;
import java.util.Map;

import org.service.IDrugService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class NewDrugAction extends ActionSupport {
  protected IDrugService drugService;
  public void setDrugService(IDrugService drugService){
	  this.drugService = drugService;
  }
  public String execute() throws Exception {
	  List drugs=drugService.getNewDrug();
	  Map request = (Map)ActionContext.getContext().get("request");
      request.put("drugs", drugs);
      return SUCCESS;
  }
}
