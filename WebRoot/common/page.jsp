<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font size="-1">第${p.currentPageNum}页/共${p.totalPageNum}页</font>

<a href="${pageContext.request.contextPath }${p.url}&num=1"><font size="-1">首页</font></a>
<a href="${pageContext.request.contextPath }${p.url}&num=${p.prePageNum}"><font size="-1">上一页</font></a>
<a href="${pageContext.request.contextPath }${p.url}&num=${p.nextPageNum}"><font size="-1">下一页</font></a>
<a href="${pageContext.request.contextPath }${p.url}&num=${p.totalPageNum}"><font size="-1">尾页</font></a>

<input type="text" size="2" id="num" name="num"/>
<input type="button" id="bt1" value="跳转" onclick="jump()"/>
&nbsp;&nbsp;
<script type="text/javascript">
function jump(){
	var numValue=document.getElementById("num").value;
	if(!/^[1-9][0-9]*$/.test(numValue)){
		alert("请输入正确页数！");
		return;
	}
	if(numValue>${p.totalPageNum}){
		alert("输入的页码不能超过最大的页码！");
		return;
	}

	window.location.href="${pageContext.request.contextPath}${p.url}&num="+numValue;
}





</script>
