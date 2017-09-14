package com.phgs.dao;

import java.util.List;

import com.phgs.bean.Order;
import com.phgs.bean.OrderItem;

public interface OrderItemDao {

	void add(OrderItem oi, Order order);

	List<OrderItem> findByOrderId(int orderID);

}
