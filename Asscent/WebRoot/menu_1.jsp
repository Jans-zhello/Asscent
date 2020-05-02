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
    <title>医药商务系统</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="reset.css" />
    <link rel="stylesheet" href="index.css" />
  </head>
  <body>
   <ul class="catalog">
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;药品分类<br></p>
    <s:iterator value="#request['catalogs']" id="drugcatalog">
    <li>
    <a href='browsedrugpaging.action?catalogid=<s:property value="#drugcatalog.catalogid"/>' target=_self>
    <s:property value="#drugcatalog.catalogname"/>
    </a>  
    </li>
    </s:iterator>
    </ul>
   
  </body>
</html>
