<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="includes/conn.jsp" %>




 
  <%
  String city=request.getParameter("aid");
  /* out.println(city);  */
  

		PreparedStatement ps=con.prepareStatement("SELECT price FROM `packages` WHERE `pname`=?");
		ps.setString(1,city);
		ResultSet rs=ps.executeQuery();
		%>
		
		<%
		 while(rs.next())
		 {
		 	
		%>
		   <option value=<%=rs.getString(1)%>> <%=rs.getString(1) %></option> 
  
 
	<%	}
		 %>
	


