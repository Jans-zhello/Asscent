package org.model;

import java.util.HashSet;
import java.util.Set;
public class Drugcatalog implements java.io.Serializable {

	// Fields

	private Integer catalogid;
	private String catalogname;
    private Set drugs = new HashSet();
	// Constructors

	/** default constructor */
	public Drugcatalog() {
	}

	/** full constructor */
	public Drugcatalog(String catalogname) {
		this.catalogname = catalogname;
	}

	// Property accessors

	public Integer getCatalogid() {
		return this.catalogid;
	}

	public void setCatalogid(Integer catalogid) {
		this.catalogid = catalogid;
	}

	public String getCatalogname() {
		return this.catalogname;
	}

	public void setCatalogname(String catalogname) {
		this.catalogname = catalogname;
	}

	public Set getDrugs() {
		return drugs;
	}

	public void setDrugs(Set drugs) {
		this.drugs = drugs;
	}

}