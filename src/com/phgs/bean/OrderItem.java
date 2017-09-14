package com.phgs.bean;
/**
 create table orderItem(
 orderItemID int primary key auto_increment,
 quantity int,
 price float(8,2),
 productID int,
 orderID int,
 constraint product_ID_FK foreign key(productID) references product(productID),
 constraint order_ID_FK foreign key(orderID) references orders(orderID)
 );
 
 
 
 */
public class OrderItem {
	private int orderItemID;
	private int quantity;
	private float price;
	private Product product;
	private int productID;
	private int orderID;
	public int getOrderItemID() {
		return orderItemID;
	}
	public void setOrderItemID(int orderItemID) {
		this.orderItemID = orderItemID;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	
	
}
