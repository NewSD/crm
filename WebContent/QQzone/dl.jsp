<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<input onblur="checkName()" onfocus="clearName()" id="username" name="username" value="please login"/>
<input onblur="checkPassword()" onfocus="clearPassword()" id="password" name="password" value="password"/>

</body>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function clearName() {
		var nameText = "please login";
		var username = $("#username").val();
		if (nameText == username){
			$("#username").val("");
			//$("#username").css("color","black");
			//$("#username").css("font-size","18px");
			$("#username").attr("type","text");
		}
		
	}

	function checkName() {
		var nameText = "please login";
		var username = $("#username").val();
		if ("" == username){
			$("#username").val("please login");
		}
		
	}
	function clearPassword() {
		var passText = "password";
		var password = $("#password").val();
		if (passText == password){
			$("#password").val("");
			$("#password").css("color","black");
			$("#password").css("font-size","18px");
			$("#password").attr("type","password");
		}
		
	}

	function checkPassword() {
		var passText = "password";
		var password = $("#password").val();
	}

</script>
</html>