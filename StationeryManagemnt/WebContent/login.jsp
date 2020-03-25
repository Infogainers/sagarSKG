<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to HMT</title>
</head>
<body>
<form style="margin-top: 80px;color:  ;font-size: 30px" action="Loginprocess" method="get">  
Username:<input type="text" name="un"/><br/><br/>  
Password:<input type="password" name="pwd"/><br/><br/>
YourRole:<select name="role">
<option>MD</option>
<option>BM</option>
<option>Manager</option>
<option>Engineer</option>
</select></br>
<input style="text-align: center" type="submit" value="login"/> 
</form> 

</body>
</html>