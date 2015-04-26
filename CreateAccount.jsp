<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create an Account</title>
<script src="Create.js" type="text/javascript"></script>
</head>
<body>
<%
	Cookie[] cookie = request.getCookies();
	String user=(String)session.getAttribute("logemail");
	if (user!=null && user!="") {
		%>
		<c:redirect url="index.jsp"></c:redirect>
		<%
	}
	else {
%>		
<form name="reg" action="Login.jsp" method="post" onsubmit="return CreateVal()">
<b>Username: </b><input type="text" name="reguname"> <br>
<b>Email: </b><input type="text" name="regemail"> <br>
<b>Phone Number: </b><input type="text" name="regnum"> <br>
<b>Password: </b><input type="password" name="regpass" id="regpass"> 
<input type="checkbox" onchange="document.getElementById('regpass').type = this.checked ? 'text' : 'password'"> Show password <br>
<b>Confirm Password: </b><input type="password" name="conpass" id="conpass">
<input type="checkbox" onchange="document.getElementById('conpass').type = this.checked ? 'text' : 'password'"> Show password <br>
<b>First Name: </b><input type="text" name="regfname"> <br>
<b>Middle Name: </b><input type="text" name="regmname"> <br>
<b>Last Name: </b><input type="text" name="reglname"> <br>
<input type="submit" value="Register"/><br>
<a href="index.jsp">Already have an account?</a><br>
</form>
<%
	}
%>
</body>
</html>