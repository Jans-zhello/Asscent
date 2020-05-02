package org.service;
import java.util.List;

import org.model.Drug;
public interface IDrugService {
  public List getNewDrug();
  public List getDrugByCatalogidPaging(Integer catalogid,int currentPage,int pageSize);
  public int getTotalByDrug(Integer catalogid);
  public List getRequireDrugByName(String name,int currentPage,int pageSize);
  public int getTotalRequireDrug(String name);
  public Drug getDrugById(Integer drugid);
  public List getDrug(int currentPage,int pageSize);
  public int getDrug();
  public List getDrugcatalog();
  public void delDrug(Integer drugid);
  public List getDrug(Integer drugid);
  public void saveDrug(Drug drug);
}