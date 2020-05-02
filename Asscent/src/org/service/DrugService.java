package org.service;
import java.util.List;
import org.dao.IDrugDAO;
import org.model.Drug;
public class DrugService implements IDrugService {
  protected IDrugDAO drugDAO;
  public void setDrugDAO(IDrugDAO drugDAO){
	  this.drugDAO = drugDAO;
  }
  public List getNewDrug(){
	  return drugDAO.getNewDrug();
  }

public List getDrugByCatalogidPaging(Integer catalogid, int currentPage,
		int pageSize) {
	return drugDAO.getDrugByCatalogidPaging(catalogid, currentPage, pageSize);
}
public int getTotalByDrug(Integer catalogid) {
	return drugDAO.getTotalByDrug(catalogid);
}
public Drug getDrugById(Integer drugid) {
	return drugDAO.getDrugById(drugid);
}
public List getRequireDrugByName(String name, int currentPage, int pageSize) {
	
	return drugDAO.getRequireDrugByName(name, currentPage, pageSize);
}
public int getTotalRequireDrug(String name) {
	return drugDAO.getTotalRequireDrug(name);
}
@Override
public List getDrug(int currentPage, int pageSize) {
	
	return drugDAO.getDrug(currentPage, pageSize);
}
@Override
public int getDrug() {
    return drugDAO.getDrug();
}
@Override
public List getDrugcatalog() {
	return drugDAO.getDrugcatalog();
}
@Override
public void delDrug(Integer drugid) {
	drugDAO.delDrug(drugid);	
}
@Override
public List getDrug(Integer drugid) {
	return drugDAO.getDrug(drugid);
}
@Override
public void saveDrug(Drug drug) {
	drugDAO.saveDrug(drug);
}
}
