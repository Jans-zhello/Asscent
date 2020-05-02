package org.model;
public class Orderitemdrug implements java.io.Serializable {

	// Fields
	private Integer orderitemid;
    private Drug drug;
    private Orderdrug orderdrug;
	private Integer quantity;
	private Integer orderid;
	private Integer drugid;
	// Constructors
	/** default constructor */
	public Orderitemdrug() {
	}
	/** full constructor */
	public Orderitemdrug(Drug drug,Orderdrug orderdrug,Integer quantity, Integer orderid, Integer drugid) {
		this.quantity = quantity;
		this.orderid = orderid;
		this.drugid = drugid;
		this.drug = drug;
		this.orderdrug = orderdrug;
	}

	// Property accessors

	public Integer getOrderitemid() {
		return this.orderitemid;
	}

	public void setOrderitemid(Integer orderitemid) {
		this.orderitemid = orderitemid;
	}

	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Integer getDrugid() {
		return this.drugid;
	}

	public void setDrugid(Integer drugid) {
		this.drugid = drugid;
	}

	public Drug getDrug() {
		return drug;
	}

	public void setDrug(Drug drug) {
		this.drug = drug;
	}

	public Orderdrug getOrderdrug() {
		return orderdrug;
	}

	public void setOrderdrug(Orderdrug orderdrug) {
		this.orderdrug = orderdrug;
	}
}