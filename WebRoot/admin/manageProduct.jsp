<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			<form name="form1" action="showUserList.jsp" method="post">
			<tr>
				<td colspan="15" class="header">
					商品管理
				</td>
			</tr>
			<tr>
				<td align="center" class="altbg1">
					<b>商品编号</b>
				</td>
				<td align="center" class="altbg1">
					<b>商品名称</b>
				</td>
				<td align="center" class="altbg1">
					<b>商品商标</b>
				</td>
				<td align="center" class="altbg1">
					<b>商品型号</b>
				</td>
				<td align="center" class="altbg1">
					<b>商品价格</b>
				</td>
				<td align="center" class="altbg1">
					<b>商品图片</b>
				</td>				
				<td align="center" class="altbg1">
					<b>修改</b>
				</td>
				<td align="center" class="altbg1">
					<b>删除</b>
				</td>
			</tr>
			<c:forEach items="${p.records }" var="p">
			<tr>
				<td rowspan="2" align="center" class="altbg2">
					${p.serialNumber }
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${p.name }
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${p.brand }
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${p.model }
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${p.price }
				</td>
				<td class="altbg2" rowspan="2" align="center" >
					<c:if test="${!empty p.picture }">
					<img alt="" src="../${p.picture }" width="150px" height="100px">
					</c:if>
				</td>
				<td class="altbg2" rowspan="2" align="center">
					<a href="ProductServlet?op=updateUI&id=${p.productID }">修改</a>
				</td>				
				<td class="altbg2" rowspan="2" align="center">
					<a href="ProductServlet?op=delete&id=${p.productID }" onclick="javascript: return confirm('确认要删除吗？')">删除</a>
				</td>
			</tr>
			<tr>

			</tr>
			</c:forEach>
			<tr></tr>
			<tr><td class="altbg2" colspan="7" rowspan="2" align="right">
					<%@ include file="../common/page.jsp" %>			</td>
			</tr>
			</table>
</body>
</html>