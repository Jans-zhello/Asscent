package org.model;

/**
 * Drug entity. @author MyEclipse Persistence Tools
 */

public class Drug implements java.io.Serializable {
	private Integer drugid;
	private String drugname;
	private Integer price;
	private String picture;
	private Integer catalogid;
	private Drugcatalog drugcatalog;
	public Drug() {
	}
	public Drug(String drugname, Integer price, String picture,
			Integer catalogid,Drugcatalog drugcatalog) {
		this.drugname = drugname;
		this.price = price;
		this.picture = picture;
		this.catalogid = catalogid;
		this.drugcatalog=drugcatalog;
	}
	public Integer getDrugid() {
		return this.drugid;
	}

	public void setDrugid(Integer drugid) {
		this.drugid = drugid;
	}

	public String getDrugname() {
		return this.drugname;
	}

	public void setDrugname(String drugname) {
		this.drugname = drugname;
	}

	public Integer getPrice() {
		return this.price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getPicture() {
		return this.picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public Integer getCatalogid() {
		return this.catalogid;
	}
	public void setCatalogid(Integer catalogid) {
		this.catalogid = catalogid;
	}
	public Drugcatalog getDrugcatalog() {
		return drugcatalog;
	}
	public void setDrugcatalog(Drugcatalog drugcatalog) {
		this.drugcatalog = drugcatalog;
	}     
}