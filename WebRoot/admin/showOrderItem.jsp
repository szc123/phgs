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
					<b>图片</b>
				</td>
				<td align="center" class="altbg1">
					<b>品牌</b>
				</td>
				<td align="center" class="altbg1">
					<b>品类</b>
				</td>
				<td align="center" class="altbg1">
					<b>型号</b>
				</td>
				<td align="center" class="altbg1">
					<b>价格</b>
				</td>
			</tr>
			<c:forEach items="${product }" var="p">
			<tr>
				<input type="hidden" name="productID" value="${p.productID }">
				<td rowspan="2" align="center" class="altbg2">
					<img alt="" src="../${p.picture }" width="50" height="50">
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${p.brand}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${p.name}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${p.model}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${p.price}
				</td>
			</tr>
			<tr>

			</tr>
			</c:forEach>
			
			<tr>
			</tr>
			<tr><td class="altbg2" colspan="7" rowspan="2" align="right">
							</td>
			</tr>
			</table>
			</form>
</body>
</html>