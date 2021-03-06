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
		<title>新闻-修改</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
		<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
		<script type="text/javascript">
		function fun_check_form(){
			if(document.form1.title.value==""){
				alert("请输入新闻标题信息。");
				return false;
			}else if(document.form1.content.value==""){
				alert("请输入新闻内容。");
				return false;
			}else{
				return true;
			}
		}
		
		</script>
		<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
	</head>

	<body>
		<form name="form1" action="NewsServlet?op=update" method="post" onSubmit="return fun_check_form()">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">
				<input type="hidden" name="newsID" value="${n.newsID }">
				<tr>
					<td colspan="12" class="header">
						添加新闻信息
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						新闻标题：
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="title" size="34" value="${n.title }">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						新闻内容：
					</td>
					<td class="altbg2" colspan="11">
						<textarea rows="5" cols="60" name="content" >${n.content }</textarea>
						<script type="text/javascript">CKEDITOR.replace( 'content' );</script>
						
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						新闻日期：
					</td>
					<td class="altbg2" colspan="11">
						 <input type="text" class="Wdate" name="writerDate" value="${n.writerDate }" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" placeholder="请输入新闻发布时间" />
					</td>
				</tr>
					<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2" colspan="11">
						<input type="submit" value="修改" name="B1" />
						&nbsp;
						<input type="reset" value="重置" name="B2" />
					</td>
				</tr>

			</table>
		</form>
	</body>

</html>