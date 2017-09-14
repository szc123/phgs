package com.phgs.bean;
//购物项
public class CartItem {
	private Product product;
	private int quantity;//数量
	private float totalPrice;//金额小计
	public CartItem(Product product){
		this.product=product;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getTotalPrice() {
		return (float) (product.getPrice()*quantity);
	}
	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}
	
}
