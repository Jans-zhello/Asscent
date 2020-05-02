package org.service;
import java.util.List;

import org.model.Orderdrug;
import org.model.Orderitemdrug;
import org.model.User;
public interface IOrderdrugService {
  public Orderdrug saveOrderdrug(Orderdrug orderdrug);
  public Orderitemdrug saveOrderitemdrug(Orderitemdrug orderitemdrug);
  public User getUser(Integer id);
}