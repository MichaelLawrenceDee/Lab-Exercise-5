<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logging in...</title>
</head>
<body>
	<c:choose>
	<c:when test="${(empty param.logemail || empty param.logpass)}">
	Error!!!<br />
	</c:when>
	<c:otherwise>
		Logging in...<br />
		<%@ page import="java.sql.*" %>
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     	url="jdbc:mysql://localhost/Users"
     	user="root"  password="aaaaaa"/>
		<sql:query dataSource="${snapshot}" var="result">
		SELECT * from User_Info;
		</sql:query>
		
	<%
		String connectionURL = "jdbc:mysql://localhost/Users";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet rs = null;
		String email=request.getParameter("logemail");
		String pass=request.getParameter("logpass");
		try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL, "root", "aaaaaa");
            String sql = "SELECT * FROM User_Info WHERE email = ? AND password = ?";
			preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,email);
            preparedStatement.setString(2,pass);
			rs =preparedStatement.executeQuery();
			if(rs.next()) {
				session.setAttribute("uname", rs.getString("username"));
				session.setAttribute("fname", rs.getString("fname"));
				session.setAttribute("mname", rs.getString("mname"));
				session.setAttribute("lname", rs.getString("lname"));
				session.setAttribute("email", email);
				session.setAttribute("error", "f");
				response.sendRedirect("index.jsp");
			}
			else {
				session.setAttribute("error", "t");
				response.sendRedirect("index.jsp");
			}
		}catch(Exception e) {
			System.out.println("The exception is" + e);
		}	
	%>
	</c:otherwise>
</c:choose>
</body>
</html>