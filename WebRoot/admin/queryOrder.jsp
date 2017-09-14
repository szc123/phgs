<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>管理人员-管理</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
</head>
<body>
	<form action="OrderServlet?op=modifyStatus" method="post" name="form">
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			<tr>
				<td colspan="15" class="header">
					订单管理
				</td>
			</tr>
			<tr>
				<td align="center" class="altbg1">
					<b>订单号</b>
				</td>
				<td align="center" class="altbg1">
					<b>订单数量</b>
				</td>
				<td align="center" class="altbg1">
					<b>订单金额</b>
				</td>
				<td align="center" class="altbg1">
					<b>订单状态</b>
				</td>
				<td align="center" class="altbg1">
					<b>操作</b>
				</td>
			</tr>
			<tr>
				<input type="hidden" name="orderID" value="${order.orderID }">
				<td rowspan="2" align="center" class="altbg2">
					${order.orderNum }
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${order.quantity}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${order.amount}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					<select name="status">
						<c:if test="${order.status==0 }">
						<option value="0" selected="selected">未付款</option>
						<option value="1">已付款</option>
						<option value="2">已发货</option>
						</c:if>
						<c:if test="${order.status==1 }">
						<option value="0" >未付款</option>
						<option value="1" selected="selected">已付款</option>
						<option value="2">已发货</option>
						</c:if>
						<c:if test="${order.status==2 }">
						<option value="0">未付款</option>
						<option value="1">已付款</option>
						<option value="2" selected="selected">已发货</option>
						</c:if>
					</select>
				</td>
				<td class="altbg2" rowspan="2" align="center">
					<button onclick="form.submit()">状态修改</button>
					<a href="OrderServlet?op=showOrderItem&id=${order.orderID }">详情</a>
					<a href="OrderServlet?op=deleteOrder&id=${order.orderID }" onclick="javascript: return confirm('确认要删除吗')">删除</a>
				</td>
			</tr>
			<tr>
			</tr>	
			<tr>
			</tr>
			<tr><td class="altbg2" colspan="7" rowspan="2" align="right">
							</td>
			</tr>
			</table>
			</form>
</body>
</html>