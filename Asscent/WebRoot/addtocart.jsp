<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
  <s:action name="browsecatalog" executeResult="true" namespace="/"/>
  </div>
  <div id="right">
  <font face=宋体>药品添加成功 ！</font>
    <a href="login_success.jsp">
	<input type="hidden"  name="catalogid"   value='<s:property value="#session['catalogid']"/>'>
    <input type="submit"  value="返回继续购买">
	</a>
  </div> 
  </div>
  <jsp:include page="foot.jsp"></jsp:include>
  </body>
  </html>