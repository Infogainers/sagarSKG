<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.utility.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Random rd=new Random();
int i=rd.nextInt(1000);
String[] names=request.getParameterValues("pr");
String s="";
for(String t:names)
{
	s=s+" "+t;
}
Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("insert into StationeryRequest values(?,?,?,?)");
ps.setInt(1,101);
ps.setInt(2,i);
ps.setString(3,"Approval Pending");
ps.setString(4,s);
ps.executeUpdate();
out.print("<font color=blue>Your request is under process..</font>");  
request.getRequestDispatcher("BMLogin.jsp").include(request, response);  
%>
</body>
</html>