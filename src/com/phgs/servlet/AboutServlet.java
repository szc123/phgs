package com.phgs.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phgs.bean.About;
import com.phgs.dao.AboutDao;
import com.phgs.dao.impl.AboutDaoImpl;
import com.phgs.util.BeanUtil;

public class AboutServlet extends HttpServlet {
	private AboutDao adao=new AboutDaoImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String op=request.getParameter("op");
		if("add".equals(op)){
			add(request,response);
		}else if("query".equals(op)){
			query(request,response);
		}else if("delete".equals(op)){
			delete(request,response);
		}else if("updateUI".equals(op)){
			updateUI(request,response);
		}else if("update".equals(op)){
			update(request,response);
		}
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		About about=BeanUtil.fillBean(request, About.class);
		adao.update(about);
		query(request, response);
	}

	private void updateUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String aboutID=request.getParameter("id");
		About about=adao.findById(Integer.parseInt(aboutID));
		request.setAttribute("about", about);
		request.getRequestDispatcher("updateAbout.jsp").forward(request, response);
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aboutID=request.getParameter("id");
		adao.deleteById(Integer.parseInt(aboutID));
		query(request, response);
	}

	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<About> list=adao.findAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("manageAbout.jsp").forward(request, response);
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		About about=BeanUtil.fillBean(request, About.class);
		adao.add(about);
		query(request, response);
	}

}
