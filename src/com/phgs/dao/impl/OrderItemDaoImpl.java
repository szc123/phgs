package com.phgs.dao.impl;

import java.util.List;

import com.bw.dbassist.BeanListHandler;
import com.bw.dbassist.DBAssist;
import com.phgs.bean.Order;
import com.phgs.bean.OrderItem;
import com.phgs.dao.OrderItemDao;
import com.phgs.util.DBCPUtil;

public class OrderItemDaoImpl implements OrderItemDao {
	private DBAssist db=new DBAssist(DBCPUtil.getDataSource());
	public void add(OrderItem oi,Order order) {
		db.update("insert into orderItem(quantity,price,productID,orderID) values(?,?,?,?)", oi.getQuantity(),oi.getPrice(),
				oi.getProduct().getProductID(),order.getOrderID());
	}
	public List<OrderItem> findByOrderId(int orderID) {
		return (List<OrderItem>) db.query("select * from orderItem where orderID=?", new BeanListHandler(OrderItem.class), orderID);
	}
}
