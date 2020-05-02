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
   <title>ҽҩ����ϵͳ</title> 
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
    <s:submit value="ע��" ></s:submit>
    </s:form>
    </div>
   </ul> 
  </div>	
  <div id="left">
  <s:action name="browsecatalog" executeResult="true" namespace="/"/>
  </div>
  <div id="right">
  <div class=right_box>
  <s:set name="items" value="#session.cart.items" />
  <s:if test="#items.size != 0">
  <h3>
  <font color="blue" size="4">�����ﳵ��ҩƷ</font>
  </h3>
  <br>
  <div class="info_dg1">
  <s:iterator value="items" id="item">
  <s:form action="opencart.action" method="post">
  <table width="600" border="0" style="word-wrap:break-word;">
  <tr align="left">
  <td width="50" style="font-size:18px;">
    ҩ����
  </td>
  <td width="100" style="font-size:18px;">
  <s:property value="value.drug.drugname" />
  </td>
  <td width="50" style="font-size:18px;">
    �۸�
  </td>
  <td width="50" style="font-size:18px;">
  <s:property value="value.drug.price" />
  </td>
  <td width="50" style="font-size:18px;">
	������
  </td>
  <td width="50" style="font-size:18px;">
  <input type="text"   name="quantity" value='<s:property  value="value.quantity"/>' size="5" />
  <input type="hidden" name="drugid"   value='<s:property  value="value.drug.drugid"/>' />
  </td>
  <td width="50" style="font-size:18px;">
  <input type="submit" value="����" />
  </td>
  </tr>
  </table>
  </s:form>
  </s:iterator>
  </div>
  <br>
  <font size="4">
   ���ѽ��:
  <s:property value="#session.cart.totalPrice" />
   Ԫ&nbsp;&nbsp;&nbsp;
  </font>
  <a href="checkout.action"><input type="submit" value="ȥ����" /></a>
  </s:if>
  <s:else>
  �Բ���,����û�й����κ�ҩƷ!
  <a href="login_success.jsp">
	<input type="hidden"  name="catalogid"   value='<s:property value="#session['catalogid']"/>'>
    <input type="submit"  value="ȥ����">
  </a>
  </s:else>
  </div>
  </div>
  </div> 
  <jsp:include page="foot.jsp"></jsp:include>
  </body>
  </html>