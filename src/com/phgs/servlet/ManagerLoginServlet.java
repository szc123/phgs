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

public class ManagerLoginServlet extends HttpServlet {
	private UserDao dao=new UserDaoImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String op=request.getParameter("op");
		if("login".equals(op)){
			login(request,response);
		}else if("logout".equals(op)){
			logout(request,response);
		}
	}
	private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().removeAttribute("username");
		response.sendRedirect(request.getContextPath()+"/ClientServlet?op=showIndex");
	}
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String verifycode=request.getParameter("verifycode");
		String rand=(String) request.getSession().getAttribute("rand");
		if(!verifycode.equals(rand)){
			request.setAttribute("msg", "验证码错误！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			User u=BeanUtil.fillBean(request, User.class);
			u.setStatus(1);
			User user=dao.findByNameAndPwd(u.getUserName(),u.getPassword(),u.getStatus());
			if(user==null){
				request.setAttribute("msg", "用户名或密码错误！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else{
				request.getSession().setAttribute("managername", user.getUserName());
				request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
			}
		}
	}
}
