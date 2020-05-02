package org.dao;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.model.Drug;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
public class DrugDAO extends HibernateDaoSupport implements IDrugDAO{
 public List getNewDrug(){
	Session session = this.getHibernateTemplate().getSessionFactory().openSession(); 
	Query query = session.createQuery("from Drug d");
	query.setFirstResult(5);
	query.setMaxResults(8);
	List drugs = query.list();
	session.close();
	return drugs;
  }
public List getDrugByCatalogidPaging(Integer catalogid, int currentPage,
		int pageSize) {
	Session session = this.getHibernateTemplate().getSessionFactory().openSession();
    Query query = session.createQuery("from Drug d where d.drugcatalog.catalogid=?");
    query.setParameter(0, catalogid);
    int startRow = (currentPage-1)*pageSize;
    query.setFirstResult(startRow);
    query.setMaxResults(pageSize);
    List drugs = query.list();
    session.close();
	return drugs;
}
public int getTotalByDrug(Integer catalogid) {
	List drugs = this.getHibernateTemplate().find("from Drug d where d.drugcatalog.catalogid=?",catalogid);
	return drugs.size();	
 }
public List getRequireDrugByName(String name,int currentPage,int pageSize) {
	Session session = this.getHibernateTemplate().getSessionFactory().openSession();
    Query query = session.createQuery("from Drug where drugname like'%"+name+"%'");
    int startRow = (currentPage-1)*pageSize;
    query.setFirstResult(startRow);
    query.setMaxResults(pageSize);
    List drugs = query.list();
    System.out.println("要搜查的名字： "+name);
    session.close();
	return drugs;
}
public int getTotalRequireDrug(String name) {
	try {
		List drugs=this.getHibernateTemplate().find("from Drug where drugname like'%"+name+"%'");
		return drugs.size();
	} catch (Exception e) {
		e.printStackTrace();
		return 0;
	}
}
//加购物车
public Drug getDrugById(Integer drugid) {
	Drug drug = this.getHibernateTemplate().get(Drug.class, drugid);
	return drug;
}
//admin商品管理界面添加分页显示
public List getDrug(int currentPage, int pageSize) {
	Session session = this.getHibernateTemplate().getSessionFactory().openSession();
    Query query = session.createQuery("from Drug d ");
    int startRow = (currentPage-1)*pageSize;
    query.setFirstResult(startRow);
    query.setMaxResults(pageSize);
    List drugs = query.list();
    session.close();
	return drugs;	
}
public int getDrug() {
	List drugs = this.getHibernateTemplate().find("from Drug d");
    return drugs.size();
}
public List getDrugcatalog() {
	List drugs = this.getHibernateTemplate().find("from Drugcatalog d");
    return drugs;
}
public void delDrug(Integer drugid) {
	List drugs = this.getHibernateTemplate().find("from Drug d where d.drugid=?",drugid);
	this.getHibernateTemplate().deleteAll(drugs);	
}
public List getDrug(Integer drugid) {
	List drugs = this.getHibernateTemplate().find("from Drug d where d.drugid=?",drugid);
	return drugs;
}
//管理员添加商品到数据库
public void saveDrug(Drug drug) {
	this.getHibernateTemplate().save(drug);
}
}