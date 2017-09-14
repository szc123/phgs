<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>品红公司</title>
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
</style>

</head>

<body>
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
<table width="799" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="3" background="image/d.jpg"></td>
  </tr>
</table>
<table width="799" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="352"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td background="image/d02.jpg"><img src="image/d_r7_c1.jpg" width="101" height="35" /></td>
            <td align="right" background="image/d02.jpg"><img src="image/d_r7_c14.jpg" width="94" height="35" /></td>
          </tr>
		<c:forEach items="${nlist }" var="n">
         <tr>
            <td height="26" colspan="2"> &nbsp;<a href="ClientServlet?id=${n.newsID }&op=detailNews" class="dong06">${n.title }&nbsp;&nbsp;&nbsp;<font color="#ff0000">[${n.writerDate }]</font></a></td>
          </tr>
          <tr>
            <td colspan="2"><img src="image/d03.jpg" width="352" height="1" /></td>
          </tr> 
          </c:forEach>
           <tr>
            <td colspan="2" align="right"><a href="ClientServlet?op=showNews"><img src="image/d_r11_c15.jpg" width="51" height="33" border="0" /></a></td>
          </tr>
          
        </table></td>
        <td align="right" valign="top"><table width="268" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><a href="ClientServlet?op=showProduct"><img src="image/d_r11_5_r1_c1.jpg" width="268" height="63" border="0" /></a></td>
          </tr>
          <tr>
            <td><a href="ClientServlet?op=showProduct"><img src="image/d_r11_5_r3_c1.jpg" width="268" height="59" border="0" /></a></td>
          </tr>
          <tr>
            <td><a href="ClientServlet?op=showProduct"><img src="image/d_r11_5_r4_c1.jpg" width="268" height="61" border="0" /></a></td>
          </tr>
          <tr>
            <td><a href="ClientServlet?op=showProduct"><img src="image/d_r11_5_r5_c1.jpg" width="268" height="64" border="0" /></a></td>
          </tr>
        </table></td>
      </tr>
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td background="image/d_r11_8.jpg"><img src="image/d_r13_c1.jpg" width="160" height="27" /></td>
          <td align="right" background="image/d_r11_8.jpg"><a href="ClientServlet?op=showProduct"><img src="image/d_r13_c21.jpg" width="66" height="27" border="0" /></a></td>
        </tr>
      </table>
      
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
        <c:forEach items="${pilist }" var="p" varStatus="vs">
          <td width="25%" align="center"><a href="ClientServlet?op=detailProduct&id=${p.productID }"><img src="${p.picture }" width="143" height="112" border="0" /></a></td>
        	
          <c:if test="${vs.count%4==0 }">
          		<tr></tr>
          </c:if>
        </c:forEach>
        </tr>
    </table>
      
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="25%" background="image/d_r11_11_r1_c15.jpg"><img src="image/d_r11_11_r1_c1.jpg" width="185" height="27" /></td>
          <td width="25%" background="image/d_r11_11_r1_c15.jpg">&nbsp;</td>
          <td width="25%" background="image/d_r11_11_r1_c15.jpg"><img src="image/d_r11_11_r1_c21.jpg" width="160" height="27" /></td>
          <td width="25%" align="right" background="image/d_r11_11_r1_c15.jpg"><a href="#"><img src="image/d_r11_11_r1_c30.jpg" width="63" height="27" border="0" /></a></td>
        </tr>
        <tr>
          <td width="50%" colspan="2" bgcolor="#FCFCFC"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <c:forEach items="${sessionScope.fwrx }" var="a">
            <tr>
              <td width="28" height="29"><img src="image/d_r11_12_r1_c1.jpg" width="28" height="32" /></td>
              <td width="100" align="center" class="d06" style="font-weight: bold">&nbsp;${a.title }：</td>
              <td class="d06" style="font-weight: bold">${a.content }</td>
            </tr>
            </c:forEach>
          </table></td>
          <td width="50%" colspan="3" bgcolor="#FCFCFC"><table width="287" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="97" height="47" align="center"><a href="http://www.google.com"><img src="image/f1.gif" width="90" height="33" /></a></td>
              <td width="97" height="47" align="center"><img src="image/f2.gif" width="88" height="33" /></td>
              <td width="97" height="47" align="center"><a href="http://www.baidu.com"><img src="image/f3.gif" width="90" height="33" /></a></td>
            </tr>
            <tr>
              <td width="97" height="47" align="center"><img src="image/d_r11_13_r6_c13.jpg" width="90" height="33" /></td>
              <td width="97" height="47" align="center"><img src="image/d_r11_13_r1_c1.jpg" width="90" height="33" /></td>
              <td width="97" height="47" align="center"><img src="image/d_r11_13_r1_c7.jpg" width="88" height="33" /></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    <td width="175" valign="top" bgcolor="#FCFCFC"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td valign="top"><a href="ClientServlet?op=showProduct"><img src="image/d_r11_6.jpg" width="175" height="42" border="0" /></a></td>
      </tr>
      <tr>
        <td height="590">
  <!-- 指向链接图片url -->
<div id=demo style=overflow:hidden;height:600;width:180;background:#214984;color:#ffffff>
<div id=demo1>
<!-- 定义图片 -->
			<c:forEach items="${plist }" var="p">
			<a href="ClientServlet?op=detailProduct&id=${p.productID }">
         	<img src="${p.picture }" width="100%" height="107" border="0" align="middle"/></a>
             </c:forEach>
</div>
<div id=demo2></div>
       
      </div>   
         
         <script>
var speed=30;
demo2.innerHTML=demo1.innerHTML;
demo.scrollTop=demo.scrollHeight;
function Marquee(){
if(demo1.offsetTop-demo.scrollTop>=0)
demo.scrollTop+=demo2.offsetHeight;
else{
demo.scrollTop--;
}
}
var MyMar=setInterval(Marquee,speed);
demo.onmouseover=function() {clearInterval(MyMar)}
demo.onmouseout=function() {MyMar=setInterval(Marquee,speed);}
</script>

</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="800" height="29" align="center" background="image/d_r11_15.jpg"></td>
  </tr>
</table>


</body>
</html>
