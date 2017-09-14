<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>留言本</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="description" content="留言本">
		<link href="img/1/jd100.css" rel="stylesheet" type="text/css">
	</head>
	<body background=img/1/bookbg.gif leftmargin='0' topmargin='3'
		marginwidth='0' marginheight='0'>
		<div align='center'>
			<IMG src=img/1/welcome.jpg>
		</div>
		<div align='center'>
			<table width='750' border='0' cellspacing='1' cellpadding='4'
				align='center'>
				<tr>
					<td height='20' colspan='2' align='right' class='unnamed2'>
						<marquee onMouseOut=start(); onMouseOver=stop(); scrollamount=3>
							<b><font color=#000099>欢迎您使用&nbsp;留言本&nbsp;</font> </b>
						</marquee>
					</td>
				</tr>

			</table>
			<div align='center' style='width=750'>
				<div align='left'>
					<table width='%' height='20' border='0' cellpadding='0'
						cellspacing='0'>
						<tr>							
							<td width='11' background='img/1/titlemu_1.gif'></td>
							<td width='*' background='img/1/titlemu_2.gif'>
								<div align='center'>
									<a href='newMessage.jsp' class=jdmenu><b>新留言</b>
									</a>
								</div>
							</td>
							<td width='12' background='img/1/titlemu_3.gif'></td>
						</tr>
					</table>
				</div>
			</div>
			<form name='form' method='post' action='index.asp'
				onSubmit='submitonce(this)'>
				<TABLE width='750' border=0 align='center' cellPadding=0
					cellSpacing=0 borderColor=#111111 style='BORDER-COLLAPSE: collapse'>
					<TBODY>
						<TR>
							<TD width='2%'>
								<IMG src='img/1/T_left.gif' border=0>
							</TD>
							<TD width='96%' background='img/1/Tt_bg.gif'></TD>
							<TD width='2%'>
								<IMG src='img/1/T_right.gif' border=0>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE width='750' height=51 border=1 align=center cellPadding=3
					cellSpacing=0 class='jd_tab'
					style='border-collapse:collapse;word-wrap:break-word;'>
					<TBODY>
						<TR class=jd_titlemu>
							<TD width='5%' class='jd_tab'>
								<div align='center'>
									回复
								</div>
							</TD>
							<TD width='50%' class='jd_tab'>
								<div align='center'>
									标题
								</div>
							</TD>
							<TD width='20%' class='jd_tab'>
								<div align='center'>
									作者
								</div>
							</TD>
							<TD width='25%' class='jd_tab'>
								<div align='center'>
									时间
								</div>
							</TD>
						</TR>
						<c:forEach items="${p.records }" var="m">
						<TR class=unnamed1>
							<TD width='6%' height='25' align=middle valign='top'
								class='jd_tab'>
								${m.count }
							</TD>
							<TD width='53%' height='25' align=left valign='top'
								class='jd_tab'>
								<a
									href='ClientServlet?op=showRevert&messageID=${m.messageID }'>
									<img src='img/1/jd-to.gif' border='0'>&nbsp;${m.content }
								</a>
							</TD>
							<TD width='20%' height='25' align=middle valign='top'
								class='jd_tab'>
								<font color=#666666> ${m.writer } </font>
							</TD>
							<TD width='14%' height='25' align=left valign='top'
								class='jd_tab'>
								<font color=#666666>${m.writerDate }</font>
							</TD>
						</TR>
						</c:forEach>
					</TBODY>
				</TABLE>
				<TABLE width='750' border=0 align='center' cellPadding=0
					cellSpacing=0 style='BORDER-COLLAPSE:collapse'>
					<TBODY>
						<TR>
							<TD>
								<IMG src='img/1/T_bottomleft.gif' border=0>
							</TD>
							<TD width='100%' background='img/1/T_bottombg.gif'></TD>
							<TD>
								<IMG src='img/1/T_bottomright.gif' border=0>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE width='20' border=0 align='center' cellPadding=0
					cellSpacing=0 style="width: 419px; ">
					<TR>
						<TD height=6 style="width: 131px; ">
						
						</TD>
					</TR>
				</TABLE>
			</form>
			
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;
		<%@ include file="common/page.jsp" %>
		
	</body>
</html>