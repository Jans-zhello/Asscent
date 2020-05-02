<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
    		  <s:if test="#session.users2.size !=0 ">
    		   <div id="vieworder">
    		   <s:iterator value="#session['users2']" id="user">
    		    <table width="620" border="1">
               <tr align="center">
               <td width="50">
               <font size="3">userID:</font>
               </td>
               <td >
               <font size="3"><s:property value="#user.id" /></font>
               </td>
              <td width="60">
              <font size="3">用户名:</font>
              </td>
              <td width="60">
              <font size="3"><s:property  value="#user.username"/></font>
              </td>             
              <td width="40">
              <font size="3">性别:</font>
              </td>
              <td width="15">
              <font size="3"><s:property  value="#user.sex"/></font>
              </td>
              <td width="50">
              <font size="3">电话:</font>
              </td>
              <td width="60">
              <font size="3"><s:property  value="#user.phone"/></font>
              </td>
              <td width="60">
              <font size="3">地址:</font>
              </td>
              <td width="50">
              <font size="3"><s:property  value="#user.address"/></font>
              </td>
              <td >
              <font size="3">注册日期:</font>
              </td>
              <td width="50">
              <font size="3"><s:property  value="#user.rdate"/></font>
              </td>
              </tr>
              </table>
              </s:iterator>
              </div>
              <div class="operation">
                <div class="operationunique">
                <s:iterator value="#session['users2']" id="user">
                <a href='userlistdel.action?id=<s:property value="#user.id"/>'><s:submit value="删除"></s:submit></a>
                &nbsp;&nbsp;
                </s:iterator>   
                </div>
              </div>		  
    		  </s:if>
    		  <s:else>
    		    对不起,没有该用户！
    		  <a href="<%=basePath%>admin/usersearch.jsp">点击这里,继续查询</a>
    		  </s:else>
    		 </div>
    	     </div>
     <jsp:include page="/foot.jsp"></jsp:include>
         </div>
  </body>
 </html>