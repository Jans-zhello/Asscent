package org.model;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
public class Orderdrug implements java.io.Serializable {

	// Fields
    private Integer orderid;
    private User user;
	private Date orderdate;
	private Integer id;
	private Set orderitems = new HashSet();
	// Constructors
    
	/** default constructor */
	public Orderdrug() {
	}

	/** full constructor */
	public Orderdrug(User user,Date orderdate, Integer id) {
		this.user= user;
		this.orderdate = orderdate;
		this.id = id;
	}

	// Property accessors

	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Set getOrderitems() {
		return orderitems;
	}
	public void setOrderitems(Set orderitems) {
		this.orderitems = orderitems;
	}

	public Date getOrderdate() {
		return this.orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
}