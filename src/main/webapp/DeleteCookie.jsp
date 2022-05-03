<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
<h1>Delete_Cookies</h1>
<%
//java code
//delete 
Cookie ck=null;//1.Create object
Cookie[]cookie=null;//2. an array of cookies

//3.get cookies- retrive
cookie=request.getCookies();

//4. Logic to print cookies

if (cookie!=null)
{
	
	for (int i=0;i<cookie.length;i++)
	{
		//to get key use functon getName();
		//to get value use function getValue();
		
		ck=cookie[i];
		if ((ck.getName()).compareTo("U_name")==0)
		{
			ck.setMaxAge(0);
			response.addCookie(ck);
		}
		if ((ck.getName()).compareTo("Mob_Num")==0)
		{
			ck.setMaxAge(0);
			response.addCookie(ck);
		}
	}
}
else
{
	out.print("Cookies are not Available");
}

%>
<h1 style="">Cookies Deleted...............</h1>
<form action="ReadCookie.jsp" method="get">
<input type="submit" value="ReadCookie">
</form>

</body>
</html>