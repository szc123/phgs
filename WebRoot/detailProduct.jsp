<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<script type="text/javascript">

function openChat(){

	window.open("chat/index.jsp","","left=250   top=200   width=500   height=400");
}
</script>
<table width="799" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td height="3" background="image/d.jpg"></td>
	</tr>
</table>
<table width="799" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
			width="799" height="161" title="pinhong">
			<param name="movie" value="image/2.swf" />
			<param name="quality" value="high" />
			<embed src="image/2.swf" quality="high"
				pluginspage="http://www.macromedia.com/go/getflashplayer"
				type="application/x-shockwave-flash" width="799" height="161"></embed>
		</object></td>
	</tr>
</table>
<table width="799" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td height="3" background="image/d.jpg"></td>
	</tr>
</table>
<table width="799" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td><img src="image/d_r3_c1.jpg" width="60" height="40" /><img src="image/top_red.jpg" width="20"
			height="40" border="0" /><img src="image/top_red.jpg" width="20"
			height="40" border="0" /><a
			href="showIndex.jsp"><img src="image/d_r3_c5.jpg" width="64"
			height="40" border="0" /></a><img src="image/top_red.jpg" width="20"
			height="40" border="0" /><a href="ClientServlet?op=showProduct"><img
			src="image/d_r3_c7.jpg" name="image1" width="94" height="40"
			border="0" id="image1" /></a><img src="image/top_red.jpg" width="20"
			height="40" border="0" /><a href="ClientServlet?op=showNews"><img
			src="image/d_r3_c8.jpg" width="93" height="40" border="0" /></a><img src="image/top_red.jpg" width="20"
			height="40" border="0" /><a
			href="ClientServlet?op=verifyUser" ><img src="image/d_r3_c9.jpg" width="95"
			height="40" border="0" /></a><img src="image/top_red.jpg" width="20"
			height="40" border="0" /><a href="ClientServlet?op=showMessage" target="_blank"><img
			src="image/d_r3_c10.jpg" width="93" height="40" border="0" /></a><img src="image/top_red.jpg" width="20"
			height="40" border="0" /><a href="login.jsp"><img src="image/d_r3_c13.jpg"
			width="85" height="40" border="0" /></a><img src="image/top_red.jpg" width="20"
			height="40" border="0" /><img src="image/top_red.jpg" width="20"
			height="40" border="0" /><img src="image/d_r3_c25.jpg"
			width="36" height="40" /></td>
	</tr>
</table>

<link href="css/right.css" rel="stylesheet" type="text/css" />

<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<TABLE height=28 cellSpacing=3 cellPadding=0 width=776 align=center
	background=zjej/btmunu.gif border=0>
	<TBODY>
		<TR vAlign=bottom>
			<TD>&nbsp;&nbsp;<A class=nav href="index.jsp">首页</A><FONT
				class=nav> &gt; </FONT><A class=nav href="ClientServlet?op=showProduct">商品展示</A><FONT
				class=nav> &gt; </FONT>商品信息</TD>
		</TR>
	</TBODY>
</TABLE>
<TABLE height=1 cellSpacing=0 cellPadding=0 width=776 align=center
	bgColor=#cccccc border=0>
	<TBODY>
		<TR>
			<TD></TD>
		</TR>
	</TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=776 align=center border=0>
	<TBODY>
		<TR>
			<TD vAlign=top width=195 background=zjej/ny3.gif bgColor=#ffffff
				height=186>
<link href="image/css.css" rel="stylesheet" type="text/css" />
<table width="193" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center" valign="middle"><a href="ClientServlet?op=showNews"><img src="image/cg1_r1_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
	  <tr>
        <td align="center" valign="middle"><a href="ClientServlet?op=showProduct"><img src="image/cg1_r2_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
      <tr>
        <td align="center" valign="middle"><a href="ClientServlet?op=showAfter"><img src="image/cg1_r4_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
      <tr>
        <td align="center" valign="middle"><a href="ClientServlet?op=showAbout"><img src="image/cg1_r6_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
      <tr  height="1">
        <td align="center" valign="middle">&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2"><img src="image/cg1_r10_c1.jpg" width="188" height="28" /></td>
          </tr>
          <c:forEach items="${sessionScope.fwrx }" var="a">
          <tr>
            <td width="33"><img src="image/cg5_1.jpg" width="21" height="28" /></td>
            <td width="158" class="d06">${a.title }:${a.content }</td>
          </tr>
          <tr>
            <td width="33" colspan="2"><img src="image/tiao.jpg" /></td>
          </tr>
         </c:forEach>
        </table></td>
      </tr>
    </table>
</TD>
			<TD vAlign=top width=3 bgColor=#e8e8e8></TD>
			<td valign="top" bgcolor="#ffffff" height="300">
			<table cellspacing="0" cellpadding="0" width="100%" align="center"
				border="0">
				<tbody>
					<tr valign="top">
						<td>
						<table cellspacing="5" cellpadding="3" width="100%"
							bgcolor="#ffffff" border="0">
							<tbody>
								
								<tr>
									<td valign="top" align="middle" width="150" height="100"><font
										color="#000000"><img
										style="BORDER-LEFT-COLOR: #000000; BORDER-BOTTOM-COLOR: #000000; BORDER-TOP-COLOR: #000000; BORDER-RIGHT-COLOR: #000000"
										height="83" hspace="0" src="${p.picture }"
										width="86" align="default" border="0" /></font></td>
									<td height="100" valign="top">
									<table height="100%" cellspacing="3" cellpadding="0"
										width="100%" border="0">
										<tbody>

											<tr valign="top">
												<td>
												<table cellspacing="1" cellpadding="3" width="100%"
													bgcolor="#cccccc" border="0">
													<tbody>
														<tr valign="top" bgcolor="#ffffff">
															<td align="middle" width="90" bgcolor="#f0f0f0">产品编号</td>
															<td style="PADDING-LEFT: 10px">${p.serialNumber }</td>
														</tr>
														<tr valign="top" bgcolor="#ffffff">
															<td align="middle" width="90" bgcolor="#f0f0f0">产品名称</td>
															<td style="PADDING-LEFT: 10px">${p.name }</td>
														</tr>
														<tr valign="top" bgcolor="#ffffff">
															<td align="middle" width="90" bgcolor="#f0f0f0">产品品牌</td>
															<td style="PADDING-LEFT: 10px">${p.brand }</td>
														</tr>
														<tr valign="top" bgcolor="#ffffff">
															<td align="middle" width="90" bgcolor="#f0f0f0">产品型号</td>
															<td style="PADDING-LEFT: 10px">${p.model }</td>
														</tr>
														<tr valign="top" bgcolor="#ffffff">
															<td align="middle" width="90" bgcolor="#f0f0f0">产品价格</td>
															<td style="PADDING-LEFT: 10px">${p.price }</td>
														</tr>
														<tr valign="top" bgcolor="#ffffff">
															<td align="middle" width="90" bgcolor="#f0f0f0">产品介绍</td>
															<td style="PADDING-LEFT: 10px">${p.description }</td>
														</tr>
													</tbody>
												</table>
												<table cellspacing="2" cellpadding="0" width="100%"
													border="0">
													<tbody>
														<tr valign="top">
															<td background="商务信息网站套餐.files/line.gif" height="4" align="center"><a href="ClientServlet?op=buyProduct&id=${p.productID }">点击购买</a></td>
														</tr>
													</tbody>
												</table>
												</td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
				</tbody>
			</table>
			</td>
		</TR>
	</TBODY>
</TABLE>

<link href="image/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style><table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="800" height="29" align="center" background="image/d_r11_15.jpg"></td>
  </tr>
</table>






</BODY>
</HTML>


