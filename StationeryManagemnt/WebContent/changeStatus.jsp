<%@page import="jdk.internal.org.jline.reader.Parser.ParseContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,com.utility.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Status</title>
</head>
<body>
	<% 
	int reqid=Integer.parseInt(request.getParameter("reqId"));
	Connection con=ConnectionProvider.getConnection();
	PreparedStatement ps=con.prepareStatement("Update StationeryRequest set Status=? where RequestId=?");
	ps.setString(1, "Approved");
	ps.setInt(2, reqid);
	ps.executeUpdate();
	out.println("Status Updated");
	

%>

</body>
</html>