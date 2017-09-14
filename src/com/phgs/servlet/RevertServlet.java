package com.phgs.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phgs.common.Page;
import com.phgs.dao.RevertDao;
import com.phgs.dao.impl.RevertDaoImpl;

public class RevertServlet extends HttpServlet {
	private RevertDao dao=new RevertDaoImpl();
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
		int pageNum=1;
		String num=request.getParameter("num");
		String id=request.getParameter("id");
		if(num!=null){
			pageNum=Integer.parseInt(num);
		}
		int totalRecords=dao.findMsgRevertNum(Integer.parseInt(id));
		Page p=new Page(pageNum,totalRecords);
		p.setPageSize(10);
		p.setRecords(dao.findPageRevertByMegId(p.getStartIndex(),p.getPageSize(),Integer.parseInt(id)));
		p.setUrl("/admin/RevertServlet?op=query&id="+id);
		request.setAttribute("p", p);
		request.getRequestDispatcher("manageRevert.jsp").forward(request, response);
	}
}
