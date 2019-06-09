<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<STYLE>
.cla1 {
FONT-SIZE: 12px; COLOR: #4b4b4b; LINE-HEIGHT: 18px; TEXT-DECORATION: none
}
.login_msg{
	font-family:serif;
}
.login_msg .msg{
	background-color: #acf;
	font-family: 微软雅黑;
}
.login_msg .btn{
	background-color: #9be;
	width: 73px;
	font-size: 18px;
	font-family: 微软雅黑;
}
.register_title{
	font-size: 32px;
	font-family: 微软雅黑;
	color:#02d;
}
.login_msg_field{
	font-family: 微软雅黑;
}
</STYLE>

<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="css/style.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="js/Calendar.js"></script>
<META content="MSHTML 6.00.2600.0" name=GENERATOR></HEAD>
<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0" background="/crm/images/rightbg.jpg">
<div ALIGN="center">
	<table border="0" width="1140px" cellspacing="0" cellpadding="0" id="table1">
		<tr>
			<td height="93"></td>
			<td></td>
		</tr>
		<tr>
			<td background="/crm/images/right.jpg"  width="740" height="412"></td>
			<td class="login_msg" width="400">
			
			<s:form cssClass="login_msg_field" action="emp_zhuce">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="zhuce_title">新用户注册</span><br/><br/>
					用&nbsp;&nbsp;户&nbsp;&nbsp;名：<s:textfield name="em.username" cssClass="msg"/><br/><br/>
					密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<s:textfield name="em.password" cssClass="msg"/><br/><br/>
					确认密码：<input class="msg" type="password"><br/><br/>
					姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<s:textfield name="em.nickname" cssClass="msg"/><br/><br/>
					性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<select class="msg" name="em.sex">
					<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;男</option>
					<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;女</option>
					</select><br/><br/>
					出生日期：<input class="msg" type="text" onfocus="c.showMoreDay=false;c.show(this);">
					<input type="hidden" name="em.birthday"/><br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input class="btn" type="submit" value=" 注册 "/>
					
					<input class="btn" type="button" value=" 取消 " onclick="document.location='/crm'"/>
			</s:form>
			
				<s:form action="emp_zhuce">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/title.png" width="185" height="26"/><br/><br/>
					用户名：<input  name="em.username"  class="msg" type="text"><br/><br/>
					密&nbsp;码：<input  name="em.password"  class="msg"><br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input class="btn" type="submit" value=" 登录 "/>&nbsp;
					<input class="btn" type="button" value=" 注册 " onclick="document.location='emp_toRegister.action'"/>
				</s:form>		
			</td>
		</tr>
	</table>
</div>
</BODY></HTML>