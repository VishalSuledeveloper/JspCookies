<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
//java code

Cookie username=new Cookie("U_Name",request.getParameter("uname"));
Cookie mobnum=new Cookie("Mob_Num",request.getParameter("mob"));

username.setMaxAge(60*60*24);
mobnum.setMaxAge(60*60*24);

response.addCookie(username);
response.addCookie(mobnum);




%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cookies</title>
</head>
<body>
<h1 style="background:green;green:white; align:center;" >Cookies ADD Successfully on client machine</h1>
<form action="ReadCookie.jsp" method="get">
<input type="submit" value="Click here to read cookies">

</form>
</body>
</html>