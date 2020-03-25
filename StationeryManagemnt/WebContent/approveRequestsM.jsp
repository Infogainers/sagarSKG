<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,com.utility.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection con = ConnectionProvider.getConnection();
		PreparedStatement ps = con.prepareStatement(
				"select empid,Itemname,status,requestId from StationeryRequest natural join amountEmployee where role=?");
		ps.setString(1, "Engineer");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			out.println(
					rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getInt(4));
		}
	%>
	<form action="changeStatus.jsp">
		RequestID:<input type="text" name="reqId"></input></br> <input
			type="submit" value="Submit"></input>
	</form>
</body>
</html>