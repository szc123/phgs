package com.phgs.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phgs.common.Page;
import com.phgs.bean.News;
import com.phgs.bean.User;
import com.phgs.dao.NewsDao;
import com.phgs.dao.impl.NewsDaoImpl;
import com.phgs.util.BeanUtil;

public class NewsServlet extends HttpServlet {
	private NewsDao dao=new NewsDaoImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String op=request.getParameter("op");
		try {
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
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		News n=BeanUtil.fillBean(request, News.class);
		dao.update(n);
		query(request,response);
	}
	private void updateUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		News n=dao.findById(Integer.parseInt(id));
		request.setAttribute("n", n);
		request.getRequestDispatcher("updateNews.jsp").forward(request, response);
	}
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		News n=BeanUtil.fillBean(request, News.class);
		dao.add(n);
		query(request,response);
	}
	private void delete(HttpServletRequest request, HttpServletResponse response) throws Exception, Exception {
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
		int totalRecords=dao.findAllNewsNum();
		Page p=new Page(pageNum,totalRecords);
		p.setRecords(dao.findPageNews(p.getStartIndex(),p.getPageSize()));
		p.setUrl("/admin/NewsServlet?op=query");
		request.setAttribute("p", p);
		request.getRequestDispatcher("manageNews.jsp").forward(request, response);	
	}
}
