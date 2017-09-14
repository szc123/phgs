package com.phgs.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phgs.bean.Product;
import com.phgs.common.Page;
import com.phgs.dao.ProductDao;
import com.phgs.dao.impl.ProductDaoImpl;
import com.phgs.util.BeanUtil;

public class ProductServlet extends HttpServlet {
	private ProductDao dao=new ProductDaoImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String op=request.getParameter("op");
		if("query".equals(op)){
			query(request,response);
		}else if("delete".equals(op)){
			delete(request,response);
		}else if("add".equals(op)){
			add(request,response);
		}else if("updateUI".equals(op)){
			updateUI(request,response);
		}else if("update".equals(op)){
			update(request,response);
		}
	}
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product p=BeanUtil.fillBean(request, Product.class);
		dao.update(p);
		query(request, response);
	}
	private void updateUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		Product p=dao.findById(Integer.parseInt(id));
		request.setAttribute("p", p);
		request.getRequestDispatcher("updateProduct.jsp").forward(request, response);
	}
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product p=BeanUtil.fillBean(request, Product.class);
		dao.add(p);
		query(request,response);	
	}
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		dao.deleteById(Integer.parseInt(id));
		query(request,response);
	}
	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNum=1;
		String num=request.getParameter("num");
		if(num!=null){
			pageNum=Integer.parseInt(num);
		}
		int totalRecords=dao.findAllProductNum();
		Page p=new Page(pageNum,totalRecords);
		p.setPageSize(5);
		p.setRecords(dao.findPageProduct(p.getStartIndex(),p.getPageSize()));
		p.setUrl("/admin/ProductServlet?op=query");
		request.setAttribute("p", p);
		request.getRequestDispatcher("manageProduct.jsp").forward(request, response);
	}
}
