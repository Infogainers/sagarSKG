<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.utility.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String unm=request.getParameter("username");
String pwd=request.getParameter("password");
String cpwd=request.getParameter("cpassword");
if(pwd.equals(cpwd))
{
	Connection con=ConnectionProvider.getConnection();
	PreparedStatement ps=con.prepareStatement("update Credentials set password=? where username=?");
	ps.setString(1,pwd);
	ps.setString(2,unm);
	ps.executeUpdate();
	out.print("Password Changed..");
} 
request.getRequestDispatcher("BMLogin.jsp").include(request, response);  
%>
</body>
</html>