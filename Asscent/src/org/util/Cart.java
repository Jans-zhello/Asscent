package org.util;
import java.util.*;
import org.model.Drug;
import org.model.Orderitemdrug;
public class Cart {
	protected Map<Integer,Orderitemdrug> items;  	//����item
	//���캯��
	public Cart(){      
		if(items==null)
			items=new HashMap<Integer,Orderitemdrug>();
	}
	//���ͼ�鵽���ﳵ
	public void addDrug(Integer drugid,Orderitemdrug orderitemdrug){
	//�Ƿ����,�������,��������
	//��������ڵĻ�,����뼯��
		if(items.containsKey(drugid)){
			Orderitemdrug _orderitemdrug=items.get(drugid);
			_orderitemdrug.setQuantity(orderitemdrug.getQuantity()+_orderitemdrug.getQuantity());
			items.put(drugid,_orderitemdrug);
		}else{
			items.put(drugid,orderitemdrug);
		}
	}
	//���¹��ﳵ�Ĺ����鼮����
	public void updateCart(Integer drugid,int quantity){
			Orderitemdrug orderitemdrug=items.get(drugid);
			orderitemdrug.setQuantity(quantity);
			orderitemdrug.setDrugid(drugid);
			items.put(drugid, orderitemdrug);
	}
	//�����ܼ۸�
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
