package com.phgs.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phgs.bean.Message;
import com.phgs.common.Page;
import com.phgs.dao.MessageDao;
import com.phgs.dao.impl.MessageDaoImpl;

public class MessageServlet extends HttpServlet {
	private MessageDao dao=new MessageDaoImpl();
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
		}
	}
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		dao.deleteById(Integer.parseInt(id));
		query(request,response);
	}
	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num=request.getParameter("num");
		int pageNum=1;
		if(num!=null){
			pageNum=Integer.parseInt(num);
		}
		int totalRecords=dao.findAllMessageNum();
		Page p=new Page(pageNum,totalRecords);
		//p.setPageSize(10);
		p.setRecords(dao.findPageMessage(p.getStartIndex(),p.getPageSize()));
		p.setUrl("/admin/MessageServlet?op=query");
		request.setAttribute("p", p);
		request.getRequestDispatcher("manageMessage.jsp").forward(request, response);
	}
}
