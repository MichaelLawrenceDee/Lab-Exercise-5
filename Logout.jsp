<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logging out...</title>
</head>
<body>
	Signing out...
	<%
	session.removeAttribute("logemail");
	%>
	<c:redirect url="index.jsp"></c:redirect><c:redirect url="index.jsp"></c:redirect>
</body>
</html>