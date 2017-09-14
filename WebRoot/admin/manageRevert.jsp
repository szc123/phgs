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
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			<tr>
				<td colspan="15" class="header">
					留言回复管理
				</td>
			</tr>
			<tr>
				<td align="center" class="altbg1">
					<b>回复内容</b>
				</td>
				<td align="center" class="altbg1">
					<b>回复作者</b>
				</td>
				<td align="center" class="altbg1">
					<b>回复日期</b>
				</td>
				<td align="center" class="altbg1">
					<b>操作</b>
				</td>
			</tr>
			<c:forEach items="${p.records }" var="r">
			<tr>
				<td rowspan="2" align="center" class="altbg2">
				${r.content }
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${r.writer }
				</td>
				<td rowspan="2" align="center" class="altbg2">
					${r.writerDate }
				</td>
				<td class="altbg2" rowspan="2" align="center">
					<a href="RevertServlet?op=delete&id=${r.revertID }">删除</a>
				</td>
			</tr>
			<tr>

			</tr>
			</c:forEach>
			
			<tr>
			</tr>
			<tr><td class="altbg2" colspan="7" rowspan="2" align="right">
				<%@ include file="../common/page.jsp" %>			</td>
			</tr>
			</table>
</body>
</html>