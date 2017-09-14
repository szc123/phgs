<%@ page language="java" import="java.util.*,com.phgs.bean.User" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="dao" class="com.phgs.dao.impl.UserDaoImpl"></jsp:useBean> 
<%
pageContext.setAttribute("user", dao.findById(Integer.parseInt(request.getParameter("id"))));

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>管理员-修改</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">

	</head>
	
	<body>
		<form name="form1" action="UserServlet" method="post" >
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">

				<input type="hidden" name="userID" value="${user.userID }" />
				<tr>
					<td colspan="12" class="header">
						用户-修改
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						属&nbsp;于 ：
					</td>
					<td class="altbg2" colspan="11">
						<c:if test="${user.status==1 }">
						管理员
					</c:if>
					<c:if test="${user.status==0 }">
						用户
					</c:if>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						账&nbsp; 号：
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="userName" size="34" value="${user.userName }">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						密&nbsp; 码：
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="password" size="34" id="password" value="${user.password }">
					</td>
				</tr>


				<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2" colspan="11">
						<span id="spanNode"></span>
						<input type="submit" value="修改" name="B1"
							onClick="return fun_check_form();">
						&nbsp;
						<input type="reset" value="重置" name="B2">
					</td>
				</tr>

			</table>
		</form>
	</body>

</html>