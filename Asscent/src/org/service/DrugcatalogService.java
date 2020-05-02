package org.service;
import java.util.List;
import org.dao.IDrugcatalogDAO;
public class DrugcatalogService implements IDrugcatalogService{
    private IDrugcatalogDAO drugcatalogDAO;
	public List getAllCatalogs() {
	    return drugcatalogDAO.getAllCatalogs();
	}
	public void setDrugcatalogDAO(IDrugcatalogDAO drugcatalogDAO) {
		this.drugcatalogDAO = drugcatalogDAO;
	}
}
