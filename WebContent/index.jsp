<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("uname");
String pass=request.getParameter("upass");
out.print("Welcome "+name);
PrintWriter out1 = response.getWriter();

if(pass.equals("123"))
{
	//RequestDispatcher d=request.getRequestDispatcher("profileserv");
	//d.forward(request, response);
	
	
	out.print("Welcome : "+name);
}
else
{
	RequestDispatcher d=request.getRequestDispatcher("index.html");
	d.include(request, response);
	out.print("SORRY,Username and Password Wrong");
}

%>
</body>
</html>