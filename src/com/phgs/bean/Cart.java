package com.phgs.bean;

import java.util.HashMap;
import java.util.Map;

//购物车
public class Cart {
	//key:商品id value:购物项
	private Map<Integer, CartItem> items=new HashMap<Integer, CartItem>();
	private int totalQuantity;//总数量
	private float amount;//总金额
	public Map<Integer, CartItem> getItems() {
		return items;
	}
	public void setItems(Map<Integer, CartItem> items) {
		this.items = items;
	}
	public int getTotalQuantity() {
		totalQuantity=0;
		for (Map.Entry<Integer, CartItem> item : items.entrySet()) {
			totalQuantity+=item.getValue().getQuantity();
		}
		return totalQuantity;
	}
	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}
	public float getAmount() {
		amount=0;
		for (Map.Entry<Integer, CartItem> item : items.entrySet()) {
			amount+=item.getValue().getTotalPrice();
		}
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	//向购物车中添加商品
	public void addProduct(Product product){
		if(items.containsKey(product.getProductID())){
			//商品已存在
			CartItem item=items.get(product.getProductID());
			item.setQuantity(item.getQuantity()+1);
		}else{
			//商品不存在
			CartItem item=new CartItem(product);
			item.setQuantity(1);
			items.put(product.getProductID(), item);
		}		
	}
}
