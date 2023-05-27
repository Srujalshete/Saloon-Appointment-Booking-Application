<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.text.*" %>
<%@ include file="includes/conn.jsp" %>
<%@ page import="java.text.*" %>




<%!
	String fname,uname,pass,mob,email,add,city,pin,gen;


   %> 
  <%

  DateFormat df=new SimpleDateFormat("yyyy-MM-dd");
String dt=df.format(new java.util.Date());


%>
  <%
   
  	uname=request.getParameter("txtuname");
  fname=request.getParameter("txtfname");
  mob=request.getParameter("txtmob");
  email=request.getParameter("txtemail");
  gen=request.getParameter("txtgen");
  add=request.getParameter("txtaddr");
  city=request.getParameter("txtcity");
	pin=request.getParameter("txtpin");
	pass=request.getParameter("txtpass");	
	
  	
  	 
	try
	{
		PreparedStatement ps=con.prepareStatement("INSERT INTO `customer`(`cuname`, `fname`, `cmob`, `cemail`, `cdate`,`cgen`, `cadd`, `ccity`, `cpin`, `upass`) VALUES(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,uname);
		ps.setString(2,fname);
		ps.setString(3,mob);
		ps.setString(4,email);
		ps.setString(5,dt);
		ps.setString(6,gen);
		ps.setString(7,add);
		ps.setString(8,city);
		ps.setString(9,pin);
		ps.setString(10,pass);
		
			int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Registration  Successful!!"))
			{
				location="frmLogin.jsp";
			}
			else
			{
				location="frmLogin.jsp";
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
					location="frmRegister.jsp";
				}
				else
				{
					location="frmRegister.jsp";
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