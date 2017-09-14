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
		<title>管理人员-管理</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
</head>
<body>
		<table width="100%" height="100%" cellpadding="4" cellspacing="1"
			class="tableborder" id="table3">
			
		    <td width="42%">
			<tr>
				<td colspan="4" class="header">
					用户管理
				</td>
			</tr>
			<tr>
				<td width="10%" align="center" class="altbg1">
					<b>用户名</b>				</td>
				<td width="30%" align="center" class="altbg1">
					<b>身份代码</b>				</td>
				<td width="40%" align="center" class="altbg1">
					<b>权限</b>				</td>
				<td width="10%" align="center" class="altbg1">
					<b>
				   </b>
			  </td>
			</tr>
			<c:forEach items="${userlist }" var="u" varStatus="vs">
			<tr>
			  <td align="center" class="altbg2">${u.userName }</td>
				<td align="center" class="altbg2">
					${u.password }
				</td>
				<td class="altbg2" lign="center">
					<c:if test="${u.status==1 }">
						管理员
					</c:if>
					<c:if test="${u.status==0 }">
						用户
					</c:if>
				</td>
				<td class="altbg2" align="center">
					<a href="updateUser.jsp?id=${u.userID }">修改</a>
					<a href="UserServlet?id=${u.userID }" onclick="javascript: return confirm('确认要删除吗？')">删除</a>
				</td>
			</tr>
			</c:forEach>
</table>
</body>
</html>


