package com.phgs.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import com.phgs.util.PaymentUtil;
import com.phgs.bean.About;
import com.phgs.bean.Cart;
import com.phgs.bean.CartItem;
import com.phgs.bean.Message;
import com.phgs.bean.News;
import com.phgs.bean.Order;
import com.phgs.bean.OrderItem;
import com.phgs.bean.Product;
import com.phgs.bean.Revert;
import com.phgs.bean.User;
import com.phgs.common.Page;
import com.phgs.dao.AboutDao;
import com.phgs.dao.MessageDao;
import com.phgs.dao.NewsDao;
import com.phgs.dao.OrderDao;
import com.phgs.dao.OrderItemDao;
import com.phgs.dao.ProductDao;
import com.phgs.dao.RevertDao;
import com.phgs.dao.UserDao;
import com.phgs.dao.impl.AboutDaoImpl;
import com.phgs.dao.impl.MessageDaoImpl;
import com.phgs.dao.impl.NewsDaoImpl;
import com.phgs.dao.impl.OrderDaoImpl;
import com.phgs.dao.impl.OrderItemDaoImpl;
import com.phgs.dao.impl.ProductDaoImpl;
import com.phgs.dao.impl.RevertDaoImpl;
import com.phgs.dao.impl.UserDaoImpl;
import com.phgs.util.BeanUtil;
import com.phgs.util.IdGenertor;

public class ClientServlet extends HttpServlet {
	private NewsDao ndao=new NewsDaoImpl();
	private ProductDao pdao=new ProductDaoImpl();
	private MessageDao mdao=new MessageDaoImpl();
	private RevertDao rdao=new RevertDaoImpl();
	private OrderDao odao=new OrderDaoImpl();
	private OrderItemDao oidao=new OrderItemDaoImpl();
	private AboutDao adao=new AboutDaoImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String op=request.getParameter("op");
		if("showIndex".equals(op)){
			showIndex(request,response);
		}else if("detailNews".equals(op)){
			detailNews(request,response);
		}else if("showMessage".equals(op)){
			showMessage(request,response);
		}else if("showRevert".equals(op)){
			showRevert(request,response);
		}else if("addRevert".equals(op)){
			addRevert(request,response);
		}else if("addMessage".equals(op)){
			addMessage(request,response);
		}else if("showProduct".equals(op)){
			showProduct(request,response);
		}else if("detailProduct".equals(op)){
			detailProduct(request,response);
		}else if("showNews".equals(op)){
			showNews(request,response);
		}else if("verifyUser".equals(op)){
			verifyUser(request,response);
		}else if("buyProduct".equals(op)){
			buyProduct(request,response);
		}else if("changeNum".equals(op)){
			changeNum(request,response);
		}else if("delOneItem".equals(op)){
			delOneItem(request,response);
		}else if("pay".equals(op)){
			pay(request,response);
		}else if("payfor".equals(op)){
			payfor(request,response);
		}else if("showUserOrder".equals(op)){
			showUserOrder(request,response);
		}else if("showOrderItem".equals(op)){
			showOrderItem(request,response);
		}else if("deleteOrder".equals(op)){
			deleteOrder(request,response);
		}else if("showAfter".equals(op)){
			showAfter(request,response);
		}else if("showAbout".equals(op)){
			showAbout(request,response);
		}
	}
	//展示关于我们
	private void showAbout(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		About about=new About();
		about.setFlag("关于我们");
		about=adao.findByFlag(about.getFlag());
		request.setAttribute("gywm", about);
		request.getRequestDispatcher("about.jsp").forward(request, response);
	}
	//展示售后服务
	private void showAfter(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		About about=new About(); 
		about.setFlag("售后服务");
		about=adao.findByFlag(about.getFlag());
		request.setAttribute("shfw", about);
		request.getRequestDispatcher("after.jsp").forward(request, response);
	}
	//删除我的订单
	private void deleteOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String orderID=request.getParameter("id");
		odao.deleteById(Integer.parseInt(orderID));
		showUserOrder(request, response);
	}
	//订单项
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
	//个人订单
	private void showUserOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		User user=(User) request.getSession().getAttribute("user");
		if(user==null){
			response.sendRedirect(request.getContextPath()+"/chat/index.jsp");
			return;
		}
		List<Order> orders=odao.findOrderByUserID(user.getUserID());
		request.setAttribute("orders",orders);
		request.getRequestDispatcher("showOrders.jsp").forward(request, response);
	}
	//在线支付,第三方要求
	private void payfor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderNum=request.getParameter("orderNum");//订单号
		String money=request.getParameter("money");//付款金额
		String pd_FrpId=request.getParameter("pd_FrpId");//银行
		
		String p0_Cmd="Buy";
		String  p1_MerId="10001126856";
		String p2_Order=orderNum;
		String p3_Amt=money;
		String p4_Cur="CNY";
		String p5_Pid="unknown";
		String p6_Pcat="unknown";
		String p7_Pdesc="unknown";
		String p8_Url="http://localhost:8080/bookstore/PaymentResponse";
		String p9_SAF="1";
		String pa_MP="no";
		String pr_NeedResponse="1";
		String hmac=PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse, "69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl");
		
		
		request.setAttribute("p0_Cmd",p0_Cmd );
		request.setAttribute("p1_MerId",p1_MerId );
		request.setAttribute("p2_Order",p2_Order );
		request.setAttribute("p3_Amt",p3_Amt );
		request.setAttribute("p4_Cur",p4_Cur );
		request.setAttribute("p5_Pid",p5_Pid );
		request.setAttribute("p6_Pcat",p6_Pcat );
		request.setAttribute("p7_Pdesc",p7_Pdesc );
		request.setAttribute("p8_Url",p8_Url );
		request.setAttribute("p9_SAF",p9_SAF );
		request.setAttribute("pa_MP",pa_MP );
		request.setAttribute("pr_NeedResponse",pr_NeedResponse );
		request.setAttribute("pd_FrpId",pd_FrpId );
		request.setAttribute("hmac",hmac );
		
		request.getRequestDispatcher("sure.jsp").forward(request, response);
		
		
	}
	//支付
	private void pay(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		User user=(User) request.getSession().getAttribute("user");
		if(user==null){
			response.sendRedirect(request.getContextPath()+"/chat/index.jsp");
			return;
		}
		Cart cart=(Cart) request.getSession().getAttribute("cart");
		Order order=new Order();
		order.setOrderNum(IdGenertor.getGUID().substring(0, 10));
		order.setQuantity(cart.getTotalQuantity());
		order.setAmount(cart.getAmount());
		order.setUser(user);
		odao.add(order);//生成订单
		Order o=odao.findByOrderNum(order.getOrderNum());
		Map<Integer, CartItem> items=cart.getItems();
		for (Map.Entry<Integer, CartItem> item : items.entrySet()) {
			OrderItem oi=new OrderItem();
			oi.setQuantity(item.getValue().getQuantity());
			oi.setPrice(item.getValue().getTotalPrice());
			oi.setProduct(item.getValue().getProduct());
			order.getItems().add(oi);
			oidao.add(oi,o);//生成订单项
		}
		
		request.getRequestDispatcher("pay.jsp?orderNum="+order.getOrderNum()+"&amount="+order.getAmount()).forward(request, response);;
	}
	//删除购物项
	private void delOneItem(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String id=request.getParameter("id");
		Cart cart=(Cart) request.getSession().getAttribute("cart");
		cart.getItems().remove(Integer.parseInt(id));
		response.sendRedirect(request.getContextPath()+"/showCart.jsp");
	}
	//修改数量
	private void changeNum(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String productID=request.getParameter("id");
		String newNum=request.getParameter("num");
		Cart cart=(Cart) request.getSession().getAttribute("cart");
		CartItem item=cart.getItems().get(Integer.parseInt(productID));
		item.setQuantity(Integer.parseInt(newNum));
		response.sendRedirect(request.getContextPath()+"/showCart.jsp");	
	}
	//购买商品
	private void buyProduct(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		Product product=pdao.findById(Integer.parseInt(id));
		HttpSession session=request.getSession();
		Cart cart=(Cart)session.getAttribute("cart");
		if(cart==null){
			cart=new Cart();
			session.setAttribute("cart", cart);
		}
		cart.addProduct(product);
		request.setAttribute("msg", "您的商品已放入购物车,<a href='"+request.getContextPath()+"/ClientServlet?op=showProduct'>继续购物</a><br/><a href='"+request.getContextPath()+"/showCart.jsp'>去购物车</a>");
		request.getRequestDispatcher("message.jsp").forward(request, response);
	}
	private void verifyUser(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		User user=(User) request.getSession().getAttribute("user");
		if(user!=null){
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
			response.sendRedirect("chat/main.jsp");
		}else{
			response.sendRedirect("chat/index.jsp");
		}
	}
	private void showNews(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String num=request.getParameter("num");
		int pageNum=1;
		if(num!=null){
			pageNum=Integer.parseInt(num);
		}
		int totalRecords=ndao.findAllNewsNum();
		Page p=new Page(pageNum,totalRecords);
		p.setRecords(ndao.findPageNews(p.getStartIndex(),p.getPageSize()));
		p.setUrl("/ClientServlet?op=showNews");
		request.setAttribute("p", p);
		request.getRequestDispatcher("showNewsList.jsp").forward(request, response);
	}
	private void detailProduct(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		Product p=pdao.findById(Integer.parseInt(id));
		request.setAttribute("p", p);
		request.getRequestDispatcher("detailProduct.jsp").forward(request, response);
	}
	private void showProduct(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String num=request.getParameter("num");
		int pageNum=1;
		if(num!=null){
			pageNum=Integer.parseInt(num);
		}
		int totalRecords=pdao.findAllProductNum();
		Page p=new Page(pageNum,totalRecords);
		p.setRecords(pdao.findPageProduct(p.getStartIndex(),p.getPageSize()));
		p.setUrl("/ClientServlet?op=showProduct");
		request.setAttribute("p", p);
		request.getRequestDispatcher("showProductList.jsp").forward(request, response);
	}
	private void addMessage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Message m=BeanUtil.fillBean(request, Message.class);
		m.setWriterDate(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
		m.setCount(0);
		mdao.add(m);
		showMessage(request, response);
	}
	private void addRevert(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Revert r=BeanUtil.fillBean(request, Revert.class);
		r.setWriterDate(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
		rdao.add(r);
		mdao.updateCount(r.getMessageID());
		showRevert(request, response);
	}
	private void showRevert(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int pageNum=1;
		String num=request.getParameter("num");
		String id=request.getParameter("messageID");
		if(num!=null){
			pageNum=Integer.parseInt(num);
		}
		int totalRecords=rdao.findMsgRevertNum(Integer.parseInt(id));
		Page p=new Page(pageNum,totalRecords);
		p.setRecords(rdao.findPageRevertByMegId(p.getStartIndex(),p.getPageSize(),Integer.parseInt(id)));
		p.setUrl("ClientServlet?op=showRevert&messageID="+id);
		Message m=mdao.findById(Integer.parseInt(id));
		request.setAttribute("p", p);
		request.setAttribute("m", m);
		request.getRequestDispatcher("revertMessage.jsp").forward(request, response);
	}
	private void showMessage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String num=request.getParameter("num");
		int pageNum=1;
		if(num!=null){
			pageNum=Integer.parseInt(num);
		}
		int totalRecords=mdao.findAllMessageNum();
		Page p=new Page(pageNum,totalRecords);
		p.setRecords(mdao.findPageMessage(p.getStartIndex(),p.getPageSize()));
		p.setUrl("/ClientServlet?op=showMessage");
		request.setAttribute("p", p);
		request.getRequestDispatcher("messageBoard.jsp").forward(request, response);
	}
	private void detailNews(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		News n=ndao.findById(Integer.parseInt(id));
		request.setAttribute("n", n);
		request.getRequestDispatcher("detailNews.jsp").forward(request, response);
	}
	//展示首页
	private void showIndex(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<News> nlist=ndao.findIndexNews();
		List<Product> plist=pdao.findAllProduct();
		List<Product> pilist=pdao.findIndexProduct();
		List<About> abouts=adao.findByFlags("24小时服务热线");
		request.getSession().setAttribute("fwrx", abouts);
		request.setAttribute("nlist", nlist);
		request.setAttribute("plist", plist);
		request.setAttribute("pilist", pilist);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}
