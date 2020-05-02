package org.util;
import java.util.*;
import org.model.Drug;
import org.model.Orderitemdrug;
public class Cart {
	protected Map<Integer,Orderitemdrug> items;  	//属性item
	//构造函数
	public Cart(){      
		if(items==null)
			items=new HashMap<Integer,Orderitemdrug>();
	}
	//添加图书到购物车
	public void addDrug(Integer drugid,Orderitemdrug orderitemdrug){
	//是否存在,如果存在,更改数量
	//如果不存在的话,添加入集合
		if(items.containsKey(drugid)){
			Orderitemdrug _orderitemdrug=items.get(drugid);
			_orderitemdrug.setQuantity(orderitemdrug.getQuantity()+_orderitemdrug.getQuantity());
			items.put(drugid,_orderitemdrug);
		}else{
			items.put(drugid,orderitemdrug);
		}
	}
	//更新购物车的购买书籍数量
	public void updateCart(Integer drugid,int quantity){
			Orderitemdrug orderitemdrug=items.get(drugid);
			orderitemdrug.setQuantity(quantity);
			orderitemdrug.setDrugid(drugid);
			items.put(drugid, orderitemdrug);
	}
	//计算总价格
	public int getTotalPrice(){
		int totalPrice=0;
		for(Iterator it=items.values().iterator();it.hasNext();){
			Orderitemdrug orderitemdrug=(Orderitemdrug)it.next();
			Drug drug=orderitemdrug.getDrug();
			int quantity=orderitemdrug.getQuantity();
			totalPrice+=drug.getPrice()*quantity;
		}
		return totalPrice;
	}
	public Map<Integer, Orderitemdrug> getItems() {
		return items;
	}
	public void setItems(Map<Integer, Orderitemdrug> items) {
		this.items = items;
	}
}
