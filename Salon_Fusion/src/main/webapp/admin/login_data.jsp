<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="../includes/conn.jsp" %>
 
  
<%! String un,pass; %>
  
<%
	
	un=request.getParameter("txtaname");
	pass=request.getParameter("txtpass");
	
	
	PreparedStatement ps=con.prepareStatement("select count(*) from `admin` where `aname`=? and `apass`=?");
	ps.setString(1,un);
	ps.setString(2,pass);
	
	ResultSet rs=ps.executeQuery();
	rs.next();
	if(rs.getString(1).equals("1"))
	{
		session.setAttribute("admin",un);
		
%>
	<script>
		if(confirm("Login Successful"))
		{
			location="AdminDashboard.jsp";
		}
		else
		{
		    location="AdminDashboard.jsp";
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