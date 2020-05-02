<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>医药商务系统</title>
	<link rel="stylesheet" href="reset.css" />
    <link rel="stylesheet" href="index.css" />
  </head>
  <body>
   <jsp:include page="header.jsp"></jsp:include>
   <div id="main">
    <div id="title">
    <ul class="msg">
    <a href="account.jsp">我的账户&nbsp;&nbsp;&nbsp;</a>
    <a href="money.jsp">我的款度&nbsp;&nbsp;&nbsp;</a>
    <a href="showcart.jsp">我的购物车&nbsp;&nbsp;&nbsp;</a>
    <a href="order.jsp">我的订单&nbsp;&nbsp;&nbsp;</a>
     <a href="response.jsp">我的反馈</a>
    <h1>欢迎您<font color="red"><s:property value="#session.user.username" /></font></h1>
    <div id="turnleft">
    <s:form action="searchdrug.action" method="post">
    <input type="text"   name="drugname"/>&nbsp;&nbsp;
    <input type="submit" value="搜索" />
    </s:form>
    </div>
    <div id="turnright">
    <s:form action="loginout.action">
    <s:submit value="注销"></s:submit>
    </s:form>
    </div>
   </ul> 
  </div>		
  <div id="left">
  <s:action name="browsecatalog" executeResult="true" namespace="/" />
  </div>
  <div id="right">
  <div class="right_box">
   <s:iterator value="#request['drugs']" id="drug">
   <table width=600 border=0>
	<tr>
    <td width=200 align="center">
	<img width=120 height=100 src='./image/<s:property value="#drug.picture"/>'/>
	<br>
	<br>
	</td>
	<td valign="top" width=400>
	<table>
	<tr>
	<td>
	药名:
	<s:property value="#drug.drugname" />
    <br>
	</td>
	</tr>
	<tr>
	<td>
	价格:
	<s:property value="#drug.price" />
	元
    <s:form action="addtocart" method="post">
	数量:
	<input type="text"    name="quantity" value="0" size="4"/>
	<input type="hidden"  name="drugid"   value='<s:property value="#drug.drugid"/>'>
    <input type="submit"  value="购买">
	</s:form>
    </td>
	</tr>
	</table>
	</td>
	</tr>
    </table>
    </s:iterator>
    <br>
	<s:set name="pager" value="#request.pager"/>
	<s:if test="#pager.hasFirst">
	<a href='browsedrugpaging.action?catalogid=<s:property value="#session['catalogid']"/>&currentPage=1'>首页</a>
	</s:if>
	<s:if test="#pager.hasPrevious">
	<a  href='browsedrugpaging.action?catalogid=<s:property value="#session['catalogid']"/>&currentPage=
	<s:property  value="#pager.currentPage-1"/>'>上一页</a>
	</s:if>
	<s:if test="#pager.hasNext">
	<a  href='browsedrugpaging.action?catalogid=<s:property value="#session['catalogid']"/>&currentPage=
	<s:property  value="#pager.currentPage+1"/>'>下一页</a>
	</s:if>
	<s:if test="#pager.hasLast">
	<a  href='browsedrugpaging.action?catalogid=<s:property value="#session['catalogid']"/>&currentPage=
	<s:property  value="#pager.totalPage"/>'>尾页</a>
	</s:if>
	<br>
	当前第
	<s:property value="#pager.currentPage" />
	页, 总共
	<s:property value="#pager.totalPage" />
	页
	</div>
   </div>
  </div> 
  <jsp:include page="foot.jsp"></jsp:include>
  </body>
</html>