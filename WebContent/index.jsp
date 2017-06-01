<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="ejb.ListElementsRemotes" %>
<%@ page import="javax.naming.InitialContext" %>

<%@ page import="java.util.List"%>

<%!
private static ListElementsRemotes values;

public void jspInit()
{
	try
	{
		InitialContext ic=new InitialContext();
		values=(ListElementsRemotes)ic.lookup("java:global/EJBStateful/ListElements");
		System.out.println(values);
	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
}

%>

<%
if(request.getParameter("addNum")!=null)
{
	int e=Integer.parseInt(request.getParameter("t1"));
	values.addElement(e);
}

if(request.getParameter("remNum")!=null)
{
	int e=Integer.parseInt(request.getParameter("t2"));
	values.removeElement(e);
}

%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hi</title>
</head>
<body>
<h1>Hello</h1>
<form name="abc" method="post">
<input type="text" name="t1"><br>
<input type="submit"  value="Addi" name="addNum"><br>
<input type="submit" value="Remove" name="remNum"><br>

<%
if(values!=null)
{
	List<Integer> nums=values.getElements();
	for(int value:nums)
	{
		out.println("<br>"+value);
		out.println("<br> Size="+nums.size());
	}
}

%>


</form>


</body>
</html>