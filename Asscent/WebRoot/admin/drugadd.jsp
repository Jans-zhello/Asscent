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
    <div id="container">
        <jsp:include page="/header.jsp"></jsp:include>
    		<div id="admincontent">
    		   <div id="admintitle">
    		   欢迎管理员 <s:property value="#session.user.username"/>
    		  <a href="loginout.action"><s:submit value="注销"></s:submit></a> 
    		   </div>
  		   <div id="adminauthority">
    		    <div class="firsttitle"><font size="5" style="float:left color:black">订单管理</font>   		     
    		     <li><a href="orderlist.action">●订单列表</a></li>
    		     <li><a href='<%=basePath%>admin/ordersearch.jsp'>●订单查询</a></li>
    		     <li><a href="<%=basePath%>admin/orderadd.jsp">●订单添加</a></li>
    		    </div>    		    
    		    <div class="secondtitle"><font size="5" style="float:left color:black">用户管理</font>  		     
                 <li><a href="userlist.action">●用户列表</a></li>
    		     <li><a href="<%=basePath%>admin/usersearch.jsp">●查询用户</a></li>
    		     <li><a href="<%=basePath%>admin/useradd.jsp">●添加用户</a></li>
    		    </div>	    
    		    <div class="thirdtitle"><font size="5" style="float:left color:black">商品管理</font>
    		     <li> <a href="druglist.action">●药品列表</a></li>
    		     <li><a href="<%=basePath%>admin/drugsearch.jsp">●查询商品</a></li>
    		     <li><a href="<%=basePath%>admin/drugadd.jsp">●添加商品</a></li>
    		   </div>
    		 </div>
    		 <div id="adminview">
              <s:form action="drugadd.action" method="post" onclick="org.util.JFileDialog.getFile()">
              <br>
              <s:textfield name="drugname" label="药品名" ></s:textfield>
              <s:textfield name="price" label="价格" cssStyle="margin-top:15px"></s:textfield>
              <s:file      name="picture" label="图片" accept="image/jpeg" cssStyle="margin-top:15px"/>
              <s:textfield name="catalogid" label="catalogID" cssStyle="margin-top:15px"></s:textfield>
              <td colspan="2" align="center"/><s:submit value="添加" cssStyle="float:left;margin-left:210px;margin-top:5px"></s:submit>
              </s:form>
    		  </div>
    	     </div>
          <jsp:include page="/foot.jsp"></jsp:include>
         </div>
  </body>
 </html>