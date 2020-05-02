package org.service;

import java.util.List;

public interface IOrderitemdrugService {
	 public List getOrderitemlist();
	 public List getOrderlist();
	 public List getOrderitemlist(Integer orderid);
	 public List getOrderlist(Integer orderid);
	 public void delOrderitemlist(Integer orderid);
	 public void delOrderlist(Integer orderid);
}
