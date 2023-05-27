<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="includes/conn.jsp" %>





<%!
	String aname,dt,time,area,price;


   %> 
  
  <%
  String un=session.getAttribute("cust").toString();
  
  aname=request.getParameter("txtser");
  	dt=request.getParameter("txtdate");
  time=request.getParameter("txttime");
  area=request.getParameter("txtarea");
  price=request.getParameter("txtprice");
  	
  	 
	try
	{
		PreparedStatement ps=con.prepareStatement("INSERT INTO `appoint`(`aname`,`uname`, `adate`, `atime`, `astatus`, `aloc`,`price`) VALUES(?,?,?,?,?,?,?)");
		ps.setString(1,aname);
		ps.setString(2,un);
		ps.setString(3,dt);
		ps.setString(4,time);
		ps.setString(5,"Book");
		ps.setString(6,area);
		ps.setString(7,price);
		
		
		
			int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Appointment  Successful!!"))
			{
				location="frmAppoint.jsp";
			}
			else
			{
				location="frmAppoint.jsp";
			}		
		</script>	
		<%	
		}
		else
		{
	%>
			<script>
				if(confirm("Error in Registration "))
				{
					location="frmAppoint.jsp";
				}
				else
				{
					location="frmAppoint.jsp";
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