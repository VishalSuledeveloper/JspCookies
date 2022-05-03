<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cookies Found</title>
</head>
<body>
<%

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
		out.print("   Key is: "+ck.getName());
		out.print("   Value is: "+ck.getValue());
	}
}
else
{
	out.print("Cookies are not Present");
}


%>
<form action="DeleteCookie.jsp" method="get">
<input type="submit" value="Delete_Cookie">
</form>


</body>
</html>