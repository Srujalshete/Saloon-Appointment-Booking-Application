<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ include file="includes/conn.jsp" %>
    
<%!

	String name,mob,email,msg;

   %>  
  <%
  	name=request.getParameter("txtname");
  	mob=request.getParameter("txtmob");
  	email=request.getParameter("txtemail");
  	msg=request.getParameter("txtmsg");
  		
	try
	{
		PreparedStatement ps=con.prepareStatement("INSERT INTO `contactus`(`name`, `mob`, `email`, `u_msg`) VALUES (?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,mob);
		ps.setString(3,email);
		ps.setString(4,msg);
	
		int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Message Send Successful!!"))
			{
				location="frmContact.jsp";
			}
			else
			{
				location="frmContact.jsp";
			}		
		</script>	
		<%	
		}
		else
		{
	%>
			<script>
				if(confirm("Error in Message Sending "))
				{
					location="frmContact.jsp";
				}
				else
				{
					location="frmContact.jsp";
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



