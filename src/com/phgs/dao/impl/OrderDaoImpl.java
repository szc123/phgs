package com.phgs.dao.impl;

import java.util.List;

import com.bw.dbassist.BeanHandler;
import com.bw.dbassist.BeanListHandler;
import com.bw.dbassist.DBAssist;
import com.phgs.bean.Order;
import com.phgs.bean.User;
import com.phgs.dao.OrderDao;
import com.phgs.util.DBCPUtil;

public class OrderDaoImpl implements OrderDao {
	private DBAssist db=new DBAssist(DBCPUtil.getDataSource());
	public void add(Order order) {
		db.update("insert into orders(orderNum,quantity,amount,status,userID) values(?,?,?,?,?)", order.getOrderNum(),order.getQuantity(),
				order.getAmount(),order.getStatus(),order.getUser().getUserID());
	}
	public List<Order> findOrderByUserID(int userID) {
		return (List<Order>) db.query("select * from orders where userID=?", new BeanListHandler(Order.class), userID);
	}
	public Order findByOrderNum(String orderNum) {
		return (Order) db.query("select * from orders where orderNum=?", new BeanHandler(Order.class), orderNum);
	}
	public List<Order> findAll() {
		return (List<Order>) db.query("select * from orders", new BeanListHandler(Order.class));
	}
	public void updateStatus(int orderID, int status) {
		db.update("update orders set status=? where orderID=?", status,orderID);
	}
	public void deleteById(int orderID) {
		db.update("delete from orders where orderID=?", orderID);
	}
}
