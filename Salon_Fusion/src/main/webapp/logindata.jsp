<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="includes/conn.jsp" %>
 
  
<%! String un,pass; %>
  
<%
	
	un=request.getParameter("txtuname");
	pass=request.getParameter("txtpass");
	
	PreparedStatement ps=con.prepareStatement("select count(*) from `customer` where cuname=? and upass=?");
	ps.setString(1,un);
	ps.setString(2,pass);
	
	ResultSet rs=ps.executeQuery();
	rs.next();
	if(rs.getString(1).equals("1"))
	{
		
		session.setAttribute("cust",un);
%>
	<script>
		if(confirm("Login Successful"))
		{
			location="CustDashboard.jsp";
		}
		else
		{
			location="CustDashboard.jsp";
		}
		
	</script>	
	
	
<%		
	}
	else
	{
%>
	
	<script>
		if(confirm("invalid Username or Password"))
		{
			location="index.jsp";
		}
		else
		{
			location="index.jsp";
		}
		
	</script>	

<%
		
	}
	
	
	
	
	
%>