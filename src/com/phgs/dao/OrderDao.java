package com.phgs.dao;

import java.util.List;

import com.phgs.bean.Order;
import com.phgs.bean.User;

public interface OrderDao {

	void add(Order order);

	List<Order> findOrderByUserID(int userID);

	Order findByOrderNum(String orderNum);

	List<Order> findAll();

	void updateStatus(int orderID, int status);

	void deleteById(int orderID);

}
