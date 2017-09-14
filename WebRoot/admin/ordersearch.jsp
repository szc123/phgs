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
	<form action="OrderServlet?op=query" method="post" name="form">
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			<tr>
				<td colspan="15" class="header">
					订单查询
				</td>
			</tr>
			<tr>
				<td align="center" class="altbg1">
					<b>请输入您要查询的订单号</b>
				</td>
			</tr>
			<tr>
				<td rowspan="2" align="center" class="altbg2">
					<input type="text" size="30" name="orderNum">
					<input type="button" style="width: 60px" value="搜索" onclick="form.submit()">
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