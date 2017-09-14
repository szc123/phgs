<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/util.js"></script>
<script type="text/javascript">

function openChat(){

	window.open("chat/index.jsp","","left=250   top=200   width=500   height=400");
}
function changeNum(inputObj,productId,oldNum){
	var num=inputObj.value;
	if(!/^[1-9][0-9]*$/.test(num)){
		alert("请输入正确的数量");
		return false;
	}
	//var sure=window.confirm("确认要修改数量吗？");
	//if(sure){
		window.location.href="ClientServlet?op=changeNum&id="+productId+"&num="+num;
	//}else{
	//	inputObj.value=oldNum;
	//}

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
			href="ClientServlet?op=verifyUser"><img src="image/d_r3_c9.jpg" width="95"
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
				class=nav> &gt; </FONT><A class=nav href="ClientServlet?op=showNews">站内新闻</A></TD>
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
			<!--    右侧显示区域   开始 -->
			
			<table width="799" border="0" align="center" cellpadding="0"
				cellspacing="0" class="n">
				<tr>
					<td align="center" valign="top" background="image/cg5.jpg"
						bgcolor="#f4f4f4">
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
</td>
					<td width="608" valign="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								
								<tr align="center" height="50">
									<td valign="middle" colspan="2" background="image/cg2.jpg"><span
										class="g03" style="font-weight: bold" >
									购物车</span></td>
								</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td height="370" align="right" valign="top">
								
	<c:if test="${empty sessionScope.cart.items }">
    	<center>
    	<br><br>
    		<h2>对不起，你还没有购买任何产品</h2>
    	</center>
    </c:if>
   <c:if test="${!empty sessionScope.cart.items }">
   		<br>
   		<table border="-2" width="100%" align="center" bordercolor="#CCCCCC">
   			<tr>
   				<th>图片</th>
   				<th>商品名称</th>
   				<th>单价</th>
   				<th>数量</th>
   				<th>小计</th>
   				<th>操作</th>
   			</tr>
   			<c:forEach items="${sessionScope.cart.items }" var="me">
   				<tr>
   				<input type="hidden" name="productID"  value="${me.key }" id="productID">
   					<td align="center">
   						<img alt="" src="${me.value.product.picture }" width="50" height="50">
   					</td>
   					<td align="center">${me.value.product.model }</td>
   					<td align="center">${me.value.product.price }</td>
   					<td align="center">
   						<input type="text" size="3" id="quantity" value="${me.value.quantity }" onchange="changeNum(this,'${me.key}',${me.value.quantity})">
   					</td>
   					<td align="center">${me.value.totalPrice }</td>
   					<td align="center">
   						<a href="ClientServlet?op=delOneItem&id=${me.key }" onclick="javascript: return confirm('确认要删除？')">删除</a>
   					</td>
   				</tr>
   				
   			</c:forEach>
   			<tr>
   				<td colspan="6" align="right">
   					共${sessionScope.cart.totalQuantity }件商品,付款金额：${sessionScope.cart.amount }元
   					<a href="ClientServlet?op=pay">去支付</a>
   				</td>
   			</tr>
   		</table>
   </c:if>
												
							</td>
						</tr>
						
					</table>
					</td>
				</tr>
			</table>
			
			<!--    右侧显示区域   结束-->


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


