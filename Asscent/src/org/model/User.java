package org.model;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
public class User implements java.io.Serializable {
	private Integer id;
	private String username;
	private String password;
	private String sex;
	private String phone;
	private String address;
	private Timestamp rdate;
	private Set orders = new HashSet();
	public User() {
	}
	public User(String username, String password, String sex, String phone,
			String address, Timestamp rdate) {
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.phone = phone;
		this.address = address;
		this.rdate = rdate;
	}
	public Integer getId() {
		return this.id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getRdate() {
		return this.rdate;
	}

	public void setRdate(Timestamp rdate) {
		this.rdate = rdate;
	}
	public Set getOrders() {
		return orders;
	}
	public void setOrders(Set orders) {
		this.orders = orders;
	}
}