<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
function alertName()
{
alert("Please Change The Password");
} 
</script>
<script type="text/javascript"> window.onload = alertName; </script>
<h1>Business Manager </h1>
<form action="ChangePassword.jsp" method="">
<input type="submit" value="Change Password"><br/>
<br/>
<button type="submit" formaction="MakeRequest.jsp">Make Requests</button><br/>
<br/>
<button type="submit" formaction="Requests.jsp">Requests</button><br/>
<br/>
<button type="submit" formaction="approveRequest.jsp">Approve Requests</button><br/>
<br/>
<button type="submit" formaction="ItemReport.jsp">Reports</button><br/>
</form>
</body>
</html>