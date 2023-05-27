<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="../includes/conn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Packages</title>
<style>

#user
{
padding:20px;

}


</style>
</head>
<body>

<%
    

%>


<% 

 try
    {
   	
PreparedStatement ps=con.prepareStatement("select * from packages");
    	ResultSet rs=ps.executeQuery();
    	//rs.next();
    		//int uid=Integer.parseInt(request.getParameter(rs.getString(2)));
    		//int eid=Integer.parseInt(request.getParameter(rs.getString(3)));
   	%>
 
       
        
 


<div class="container px-lg-5 frm" style="margin-top:50px">
  <div class="row mx-lg-n4" >
  
    <div class="col py-3 px-lg-4 border bg-light">
     <form action=showtreker.jsp method=get >
      <h2 class="text-center bg-warning" style="background-color:;width:100%;padding:15px;text-align:center;color:white">View Packages </h2>
 
     <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">No.</th>
     <th scope="col">Package name</th>
      <th scope="col">Package Price</th>
     <th scope="col">Package Details</th>
     <th scope="col">Package Picture</th>
     <th scope="col">Action</th>
      
      
    </tr>
  </thead>
  <tbody>
    <tr>
    <%
    
    int no=(1);
	while(rs.next())
	{
	
	
	 %>
	
	
	
	<th scope="row"><%=no %></th>
	<td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    
         <td><%=rs.getString(5)%></td>
         <td><img src="../images/<%=rs.getString(4)%>" height="100px" width="150px"></td>
         
         <td><a href="frmupdatePack.jsp?pid=<%=rs.getString(1)%>" class="btn btn-danger">Update</a></td>
       
      <% no=no+1; %>
  </tr>
 
</tbody>
 
<%
	}

%>
</table>


    
        </form>
    
    </div>
  </div>
</div>
<br>
<br>

  
	<%
	
}
catch(Exception e)
{
out.println(e);
}

%>
	
	
   
  
  
  </body>

</body>
</html>