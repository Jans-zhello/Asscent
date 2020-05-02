package org.dao;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
public class DrugcatalogDAO extends HibernateDaoSupport implements IDrugcatalogDAO {
  public List getAllCatalogs(){
	  List catalogs = this.getHibernateTemplate().find("from Drugcatalog"); 
	  return catalogs;
  }
}
