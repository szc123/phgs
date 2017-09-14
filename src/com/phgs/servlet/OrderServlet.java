package com.phgs.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phgs.bean.Order;
import com.phgs.bean.OrderItem;
import com.phgs.bean.Product;
import com.phgs.dao.OrderDao;
import com.phgs.dao.OrderItemDao;
import com.phgs.dao.ProductDao;
import com.phgs.dao.impl.OrderDaoImpl;
import com.phgs.dao.impl.OrderItemDaoImpl;
import com.phgs.dao.impl.ProductDaoImpl;

public class OrderServlet extends HttpServlet {
	private OrderDao odao=new OrderDaoImpl();
	private OrderItemDao oidao=new OrderItemDaoImpl();
	private ProductDao pdao=new ProductDaoImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String op=request.getParameter("op");
		if("showOrders".equals(op)){
			showOrders(request,response);
		}else if("modifyStatus".equals(op)){
			modifyStatus(request,response);
		}else if("showOrderItem".equals(op)){
			showOrderItem(request,response);
		}else if("deleteOrder".equals(op)){
			deleteOrder(request,response);
		}else if("query".equals(op)){
			query(request,response);
		}
	}

	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderNum=request.getParameter("orderNum");
		Order order=odao.findByOrderNum(orderNum);
		request.setAttribute("order", order);
		request.getRequestDispatcher("queryOrder.jsp").forward(request, response);
	}

	private void deleteOrder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String orderID=request.getParameter("id");
		odao.deleteById(Integer.parseInt(orderID));
		showOrders(request, response);
	}

	private void showOrderItem(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String orderID=request.getParameter("id");
		List<OrderItem> ois=oidao.findByOrderId(Integer.parseInt(orderID));
		List<Product> product=new ArrayList<Product>();
		for (OrderItem orderItem : ois) {
			Product p=pdao.findById(orderItem.getProductID());
			product.add(p);
		}
		request.setAttribute("product", product);
		request.getRequestDispatcher("showOrderItem.jsp").forward(request, response);
	}

	private void modifyStatus(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String orderID=request.getParameter("orderID");
		String status=request.getParameter("status");
		System.out.println(orderID+"--"+status);
		odao.updateStatus(Integer.parseInt(orderID),Integer.parseInt(status));
		showOrders(request, response);
	}

	private void showOrders(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<Order> olist=odao.findAll();
		request.setAttribute("olist", olist);
		request.getRequestDispatcher("manageOrders.jsp").forward(request, response);
	}

}
