<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
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
    <s:submit value="ע��" style="margin-let"></s:submit>
    </s:form>
    </div>
   </ul> 
  </div>	
  <div id="left">
  <s:action name="browsecatalog" executeResult="true" namespace="/"/>
  </div>
  <div id="right">
   <div class="right_box">
	<s:set name="drugs" value="#request.drugs" />
	<s:if test="#drugs.size != 0">
	<h3>
	<font color="blue">���з���������ҩƷ</font>
	</h3>
	<br />
	<s:iterator value="#drugs" id="drug">
	<table width=600 border=0>
	<tr>
	<td   width=200 align="center">
    <img  width=120 height=100 src='./image/<s:property value="#drug.picture"/>' width="100">
    <br />
    </td>
	<td valign="top" width=400>
    <table>
    <tr>
	<td>����:
	<s:property  value="#drug.drugname" />
	<br>
    </td>
	</tr>
	<tr>
    <td>
	�۸�:<s:property value="#drug.price" />Ԫ
    <form action="addtocart.action"  method="post">
	����:
	<input  type="text"    name="quantity" value="0" size="4" />
	<input  type="hidden"  name="drugid" value='<s:property value="#drug.drugid"/>'/>
    <input  type="submit"  value="����" />
    </form>
	</td>
	</tr>
	</table>
	</td>
    </tr>
	</table>
	</s:iterator>
	<br />
	<s:set name="pager" value="#request.pager"/>
	<s:if test="#pager.hasFirst">
	<a href='searchdrug.action?drugname=<s:property value="#session['drugname']"/>&amp;currentPage=1'>��ҳ</a>
	</s:if>
	<s:if test="#pager.hasPrevious">
	<a  href='searchdrug.action?drugname=<s:property value="#session['drugname']"/>&amp;currentPage=
	<s:property  value="#pager.currentPage-1"/>'>��һҳ</a>
	</s:if>
	<s:if test="#pager.hasNext">
	<a  href='searchdrug.action?drugname=<s:property value="#session['drugname']"/>&amp;currentPage=
	<s:property  value="#pager.currentPage+1"/>'>��һҳ</a>
	</s:if>
	<s:if test="#pager.hasLast">
	<a  href='searchdrug.action?drugname=<s:property value="#session['drugname']"/>&amp;currentPage=
	<s:property  value="#pager.totalPage"/>'>βҳ</a>
	</s:if>
	<br>
	��ǰ��
	<s:property value="#pager.currentPage" />
	ҳ, �ܹ�
	<s:property value="#pager.totalPage" />
	ҳ
	</s:if>
	<s:else>
	�Բ���,û�к��ʵ�ҩƷ!
	</s:else>
	</div>
    </div>
    </div>
  <jsp:include page="foot.jsp"></jsp:include>
  </body>
  </html>