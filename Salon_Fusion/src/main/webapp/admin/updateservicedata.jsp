<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="../includes/conn.jsp" %>




<%!
	String pid,ename,efee,eimg,edet;
   
   %>
   
  <%
  pid=request.getParameter("pid");
  	
  	
  	efee=request.getParameter("txtprice");
  	eimg=request.getParameter("txtimage");
  	
  	edet=request.getParameter("txtdesc");
  	
  	
  	
  	
	try
	{
		PreparedStatement ps=con.prepareStatement("UPDATE `services` SET `sprice`=?,`sdet`=? WHERE sid=?");
		ps.setString(1,efee);
		/* ps.setString(2,eimg); */
		ps.setString(2,edet);
		ps.setString(3,pid);
		
		
		
		int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Services Update  Successfully"))
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
				if(confirm("Error In Adding Event Details "))
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
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
  
  %>