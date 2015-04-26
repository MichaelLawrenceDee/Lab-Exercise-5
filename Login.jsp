<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logging in...</title>
</head>
<body>
	<c:choose>
	<c:when test="${(empty param.logemail || empty param.logpass) && empty param.reguname}">
	Error!!!<br />
	</c:when>
	<c:otherwise>
	Logging in...<br />
	<%
		String email=request.getParameter("logemail");
		String pass=request.getParameter("logpass");
		String reguname=request.getParameter("reguname");
		if (email==null || email=="") {
			session.setAttribute("logemail", reguname);
		}
		else {
			session.setAttribute("logemail",email);
		}
		response.sendRedirect("index.jsp");	
	%>
	</c:otherwise>
</c:choose>
</body>
</html>