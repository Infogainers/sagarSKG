<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.utility.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
<center>
<h3>Welcome to HMT Technologies service desk</h3>
</center>
<B>What do you need help with?</B>
</form>
<% 
List<String> list=new ArrayList<>();
Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("select * from StationeryItems");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	list.add(rs.getString(2));
}
out.println("<form action='mrequest.jsp'>");
for(String s:list){  
out.println("<input type='checkbox' name='pr' value='"+s+"'>"+s+"</input><br/>"); 
}  
out.println("<input type='submit' value='submit'></form></body>");
%>
</body>
</html>