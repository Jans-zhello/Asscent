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
    <title>ҽҩ����ϵͳ</title>
	<link rel="stylesheet" href="reset.css" />
    <link rel="stylesheet" href="index.css" />
  </head>
  <body>
   <jsp:include page="header.jsp"></jsp:include>
   <div id="main">
    <div id="title">
    <ul class="msg">
    <a href="account.jsp">�ҵ��˻�&nbsp;&nbsp;&nbsp;</a>
    <a href="money.jsp">�ҵĿ��&nbsp;&nbsp;&nbsp;</a>
    <a href="showcart.jsp">�ҵĹ��ﳵ&nbsp;&nbsp;&nbsp;</a>
    <a href="order.jsp">�ҵĶ���&nbsp;&nbsp;&nbsp;</a>
     <a href="response.jsp">�ҵķ���</a>
    <h1>��ӭ��<font color="red"><s:property value="#session.user.username" /></font></h1>
    <div id="turnleft">
    <s:form action="searchdrug.action" method="post">
    <input type="text"   name="drugname"/>&nbsp;&nbsp;
    <input type="submit" value="����" />
    </s:form>
    </div>
    <div id="turnright">
    <s:form action="loginout.action">
    <s:submit value="ע��"></s:submit>
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
	ҩ��:
	<s:property value="#drug.drugname" />
    <br>
	</td>
	</tr>
	<tr>
	<td>
	�۸�:
	<s:property value="#drug.price" />
	Ԫ
    <s:form action="addtocart" method="post">
	����:
	<input type="text"    name="quantity" value="0" size="4"/>
	<input type="hidden"  name="drugid"   value='<s:property value="#drug.drugid"/>'>
    <input type="submit"  value="����">
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
	<a href='browsedrugpaging.action?catalogid=<s:property value="#session['catalogid']"/>&currentPage=1'>��ҳ</a>
	</s:if>
	<s:if test="#pager.hasPrevious">
	<a  href='browsedrugpaging.action?catalogid=<s:property value="#session['catalogid']"/>&currentPage=
	<s:property  value="#pager.currentPage-1"/>'>��һҳ</a>
	</s:if>
	<s:if test="#pager.hasNext">
	<a  href='browsedrugpaging.action?catalogid=<s:property value="#session['catalogid']"/>&currentPage=
	<s:property  value="#pager.currentPage+1"/>'>��һҳ</a>
	</s:if>
	<s:if test="#pager.hasLast">
	<a  href='browsedrugpaging.action?catalogid=<s:property value="#session['catalogid']"/>&currentPage=
	<s:property  value="#pager.totalPage"/>'>βҳ</a>
	</s:if>
	<br>
	��ǰ��
	<s:property value="#pager.currentPage" />
	ҳ, �ܹ�
	<s:property value="#pager.totalPage" />
	ҳ
	</div>
   </div>
  </div> 
  <jsp:include page="foot.jsp"></jsp:include>
  </body>
</html>