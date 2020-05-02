<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>医药商务系统</title> 
   <base href="<%=basePath%>">
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
    		   <div id="vieworder">
    		   <s:iterator value="#session['drugs']" id="drug">
    		   <table width="620" border="1">
               <tr align="center">
               <td width="50">
               <font size="3">drugID:</font>
               </td>
               <td >
               <font size="3"><s:property value="#drug.drugid" /></font>
               </td>
              <td width="80">
              <font size="3">药品名:</font>
              </td>
              <td width="60">
              <font size="3"><s:property  value="#drug.drugname"/></font>
              </td>             
              <td width="50">
              <font size="3">价格:</font>
              </td>
              <td width="15">
              <font size="3"><s:property  value="#drug.price"/></font>
              </td>
              <td width="50">
              <font size="3">图片:</font>
              </td>
              <td width="60">
              <font size="3"><s:property  value="#drug.picture"/></font>
              </td>
              <s:iterator value="#session['drugcatalogs']" id="drugcatalog">
              <s:if test="#drugcatalog.catalogid==#drug.catalogid">
              <td width="60">
              <font size="3">catalogID:</font>
              </td>
              <td width="50">
              <font size="3"><s:property  value="#drugcatalog.catalogid"/></font>
              </td>
              <td width="100">
              <font size="3">catalogname:</font>
              </td>
              <td width="50">
              <font size="3"><s:property  value="#drugcatalog.catalogname"/></font>
              </td>
              </s:if>
              </s:iterator>
              </tr>
              </table>
              </s:iterator>
              <s:set name="pager2" value="#session.pager2"/>
			  <s:if test="#pager2.hasFirst">
			  <a href='druglist.action?currentPage=1'>首页</a>
			  </s:if>
			  <s:if test="#pager2.hasPrevious">
			  <a  href='druglist.action?currentPage=<s:property value="#pager2.currentPage-1"/>'>上一页</a>
			  </s:if>
			  <s:if test="#pager2.hasNext">
			  <a  href='druglist.action?currentPage=<s:property value="#pager2.currentPage+1"/>'>下一页</a>
			  </s:if>
			  <s:if test="#pager2.hasLast">
			  <a  href='druglist.action?currentPage=<s:property value="#pager2.totalPage"/>'>尾页</a>
			  </s:if>
			  <br>
			   当前第
			  <s:property value="#pager2.currentPage" />
			  页, 总共
			  <s:property value="#pager2.totalPage" />
			  页
		    </div>
		   <div class="operation">
		   <div class="operationunique">
		    <s:iterator value="#session['drugs']" id="drug">
		    <a href='druglistdel.action?drugid=<s:property value="#drug.drugid"/>'><s:submit value="删除"></s:submit></a>
		    &nbsp;&nbsp;
		    </s:iterator>   
		        </div>
		      </div>
		     </div>
		    </div>
     <jsp:include page="/foot.jsp"></jsp:include>
         </div>
  </body>
 </html>