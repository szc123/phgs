<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>管理员-添加</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
		<script type="text/javascript">
			function check(){
				var password=document.getElementById("password").value;
				var confirmpassword=document.getElementById("confirmpassword").value;
				var spanNode=document.getElementById("spanNode");
				if(password==confirmpassword){
					return true;
				}else{
					spanNode.innerHTML="两次输入的密码不一样！".fontcolor("red");
					return false;	
				}
			}
		</script>
	</head>

	<body>
		<form name="form1" action="UserServlet" method="post" onsubmit="return check()">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">

				<tr>
					<td colspan="12" class="header">
						管理-添加
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						管理名称：
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="userName" size="34">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						密&nbsp; 码：
					</td>
					<td class="altbg2" colspan="11">
						<input type="password" name="password" size="34" id="password">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						确认密码：
					</td>
					<td class="altbg2" colspan="11">
						<input name="confirmpassword" size="34" type="password" id="confirmpassword">
					</td>
				</tr>


				<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2" colspan="11">
						<span id="spanNode"></span>
						<input type="submit" value="提交" name="B1"
							onClick="return fun_check_form();">
						&nbsp;
						<input type="reset" value="重置" name="B2">
					</td>
				</tr>

			</table>
		</form>
	</body>

</html>