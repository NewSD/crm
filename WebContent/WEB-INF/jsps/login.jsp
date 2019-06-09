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
}
.login_msg .btn{
	background-color: #9be;
	width: 73px;
	font-size: 18px;
	font-family: 微软雅黑;
}
</STYLE>

<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="css/style.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2600.0" name=GENERATOR></HEAD>
<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0" background="images/rightbg.jpg">
<div ALIGN="center">
	<table border="0" width="1140px" cellspacing="0" cellpadding="0" id="table1">
		<tr>
			<td height="93"></td>
			<td></td>
		</tr>
		<tr>
			<td background="images/right.jpg"  width="740" height="412"></td>
			<td class="login_msg" width="400">
				<s:form action="emp_login">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/title.png" width="185" height="26"/><br/><br/>
					用户名：<input id="username" name="username" value="please login" class="msg" type="text"><br/><br/>
					密&nbsp;码：<input id="password" name="password" value="enter password" class="msg"><br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input class="btn" type="submit" value=" 登录 "/>&nbsp;
					<input class="btn" type="button" value=" 注册 " onclick="document.location='emp_toRegister.action'"/>
				</s:form>
			</td>
		</tr>
	</table>
</div>

</BODY>
<script type="text/javascript">
	//页面加载完成后会调用一个函数
	window.onload = function(){
		//给id绑定事件
		document.getElementById("username").onblur = checkUsername;
		document.getElementById("username").onfocus = clearUsername;
		document.getElementById("password").onblur = checkPassword;
		document.getElementById("password").onfocus = clearPassword;
	}
	
	function clearUsername() {
		var nameText = "please login";
		var username = document.getElementById("username").value;
		if (nameText == username){
			document.getElementById("username").value="";
		}
	}

	function checkUsername() {
		var nameText = "please login";
		var username = document.getElementById("username").value;
		if ("" == username){
			document.getElementById("username").value=nameText;
		}
	}
	function clearPassword() {
		var passText = "enter password";
		var password = document.getElementById("password").value;
		if (passText == password){
			document.getElementById("password").setAttribute("type", "password");
			document.getElementById("password").value="";
		}
	}

	function checkPassword() {
		var passText = "enter password";
		var password = document.getElementById("password").value;
		if ("" == password){
			document.getElementById("password").setAttribute("type", "text");
			document.getElementById("password").value=passText;
		}
	}
</script>
</HTML>