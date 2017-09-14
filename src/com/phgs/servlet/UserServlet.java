package com.phgs.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phgs.bean.User;
import com.phgs.dao.UserDao;
import com.phgs.dao.impl.UserDaoImpl;
import com.phgs.util.BeanUtil;

public class UserServlet extends HttpServlet {

	private UserDao dao=new UserDaoImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//删除用户
		String id=request.getParameter("id");
		if(id!=null){
			dao.delete(Integer.parseInt(id));
		}
		request.setAttribute("userlist", dao.findAll());
		request.getRequestDispatcher("showUserList.jsp").forward(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//增加修改用户
		User u=BeanUtil.fillBean(request, User.class);
		String id=request.getParameter("userID");
		if(id==null){
			//增加
			u.setStatus(1);
			dao.add(u);
		}else{
			//修改
			dao.update(u);
		}
		request.setAttribute("userlist", dao.findAll());
		request.getRequestDispatcher("showUserList.jsp").forward(request, response);
	}
}
