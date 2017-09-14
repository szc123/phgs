package com.phgs.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phgs.bean.User;
import com.phgs.dao.UserDao;
import com.phgs.dao.impl.UserDaoImpl;
import com.phgs.util.BeanUtil;

public class ChatServlet extends HttpServlet {
	private UserDao udao=new UserDaoImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String op=request.getParameter("op");
		if("login".equals(op)){
			login(request,response);
		}else if("checkName".equals(op)){
			checkName(request,response);
		}else if("register".equals(op)){
			register(request,response);
		}
	}
	private void register(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		User u=BeanUtil.fillBean(request, User.class);
		u.setStatus(0);
		udao.add(u);
		response.sendRedirect(request.getContextPath()+"/chat/index.jsp");
	}
	private void checkName(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String name=request.getParameter("userName");
		if(name!=null && !name.trim().equals("")){
			User u=udao.findEqualName(name);
			if(u!=null){
				response.getWriter().write("<font color='red' size='-2'>用户已经存在</font>");
			}else{
				response.getWriter().write("<font color='green' size='-2'>用户名可以使用</font>");
			}
		}
	}
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String verifycode=request.getParameter("verifycode");
		String rand=(String) request.getSession().getAttribute("rand");
		if(!verifycode.equals(rand)){
			request.setAttribute("msg", "验证码错误！");
			request.getRequestDispatcher("userLogin.jsp").forward(request, response);
		}else{
			User u=BeanUtil.fillBean(request, User.class);
			User user=udao.findUsers(u.getUserName(), u.getPassword());
			if(user==null){
				request.setAttribute("msg", "用户名或密码错误！");
				request.getRequestDispatcher("userLogin.jsp").forward(request, response);
			}else{
				ServletContext application = this.getServletContext();
				List userList = (List)application.getAttribute("users");
				if (userList == null || userList.size() == 0) {  
					userList = new ArrayList();
					userList.add(user.getUserName());
				} else {  
					boolean bool = true;
					for (int i = 0; i < userList.size(); i++) {
						if (user.getUserName().equals(userList.get(i).toString())) {
							bool = false;
							break;
						}
					}
					if (bool)
						userList.add(user.getUserName());
				}
				application.setAttribute("users", userList);
				request.getSession().setAttribute("user", user);
				response.sendRedirect("../showIndex.jsp");
			}
		}
	}
}	
	
