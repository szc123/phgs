<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>message</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="refresh" content="3">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body onLoad="scroll(0,9999)">
<table width="100%" border="0" align="left" cellpadding="0"
	cellspacing="0" bordercolor="#EBEBEB">
	
	<h3 ><font color="green" >用户列表</font>
	<c:forEach items="${applicationScope.users }" var="u" >
	<tr align="left">
		<td height="20"class="p16"><img src="../image/iboy.gif" />&nbsp;${u}</td>
	</tr>	
	</c:forEach>

	
</table>
</body>
</html>
