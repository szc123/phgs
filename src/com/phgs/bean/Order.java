package com.phgs.bean;

import java.util.ArrayList;
import java.util.List;
/**
  create table orders(
  orderID int PRIMARY KEY  auto_increment,
  orderNum varchar(100),
  quantity int,
  amount float(8,2),
  status int,
  userID int,
  constraint user_ID_FK foreign key(userID) references users(userID) 
  );
 
 */
public class Order {
	private int orderID;
	private String orderNum;
	private int quantity;
	private float amount;
	private int status;//0未付款1已付款2已发货
	private User user;
	private int userID;
	private List<OrderItem> items=new ArrayList<OrderItem>();
	
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<OrderItem> getItems() {
		return items;
	}
	public void setItems(List<OrderItem> items) {
		this.items = items;
	}
	
	
}
