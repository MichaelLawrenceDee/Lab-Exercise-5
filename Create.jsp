<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creating Account</title>
</head>
<body>
	<c:choose>
	<c:when test="${(empty param.reguname || empty param.regemail || empty param.regnum || empty param.regpass || empty param.regfname || empty param.reglname)}">
	Error!!!<br />
	</c:when>
	<c:otherwise>
		Creating Account...<br />
		<%@ page import="java.sql.*" %>
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     	url="jdbc:mysql://localhost/Users"
     	user="root"  password="aaaaaa"/>
	<%
		String connectionURL = "jdbc:mysql://localhost/Users";
		String email=request.getParameter("regemail");
		String pass=request.getParameter("regpass");
		String uname=request.getParameter("reguname");
		String phone=request.getParameter("regnum");
		String fname=request.getParameter("regfname");
		String mname=request.getParameter("regmname");
		String lname=request.getParameter("reglname");
	%>
	<sql:update dataSource="${snapshot}" var="result">
	INSERT INTO User_Info (Username, password,email,phone,fname,mname,lname)
	VALUES ('<%=uname %>', '<%=pass %>', '<%=email %>', '<%=phone %>','<%=fname %>','<%=mname %>','<%=lname %>');
	</sql:update>
	<%
		session.setAttribute("uname", uname);
		session.setAttribute("fname", fname);
		session.setAttribute("mname", mname);
		session.setAttribute("lname", lname);
		session.setAttribute("email", email);
		session.setAttribute("error", "f");
		response.sendRedirect("index.jsp");
	%>
	</c:otherwise>
</c:choose>
</body>
</html>