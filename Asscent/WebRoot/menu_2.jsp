<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>ҽҩ����ϵͳ</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="reset.css" />
    <link rel="stylesheet" href="index.css" />
  </head>
  <body>
  <h1><span class="new">ҩƷչʾ</span></h1><br>
  <div class="newdrug">
  <s:iterator value="#request['drugs']" id="drug"> 
   <div class="description">
   <img width=120 height=100 src='./image/<s:property value="#drug.picture"/>'/><br>
   <s:property  value="#drug.drugname"/><br>
   <s:property value="#drug.price"/>Ԫ
   <form action="addtocart" method="post">
       ����:
   <input type="text"   name="quantity" id="quantity" value="0" size="4"/>
   <input type="hidden" name="drugid"   value='<s:property value="#drug.drugid"/>'/>
   <input type="submit" value="����"/>
   </form>
   </div>
   </s:iterator>
   </div>
   </body>
</html>
