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
<script type="text/javascript">
	function clearName() {
		var nameText = "please login";
		var username = document.getElementById("username").value;
		if (nameText == username){
			document.getElementById("username").value="";
		}
		
	}

	function checkName() {
		var nameText = "please login";
		var username = document.getElementById("username").value;
		if ("" == username){
			document.getElementById("username").value=nameText;
		}
		
	}
	function clearPassword() {
		var passText = "password";
		var password = document.getElementById("password").value;
		if (passText == password){
			document.getElementById("password").value="";
		}
		
	}

	function checkPassword() {
		var passText = "password";
		var password = document.getElementById("password").value;
		if ("" == password){
			document.getElementById("password").value=passText;
		}
	}

</script>
</html>