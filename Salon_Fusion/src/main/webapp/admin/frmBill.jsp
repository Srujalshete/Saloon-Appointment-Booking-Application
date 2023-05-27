<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ include file="../includes/conn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> receipt</title>
<link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin=anonymous>

<script src=//code.jquery.com/jquery-3.3.1.slim.min.js integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin=anonymous></script>

<script src=//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin=anonymous></script>

<script src=//stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin=anonymous></script>

<script src=//code.jquery.com/jquery-3.5.1.slim.js integrity="sha256-DrT5NfxfbHvMHux31Lkhxg42LY6of8TaYyK50jnxRnM=" crossorigin=anonymous></script>
  
<link rel=stylesheet href=../css/bootstrap.min.css>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<!-- <link rel=stylesheet href="../css/mystyle.css"> -->



<style>
@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Pacifico&family=Shojumaru&family=Teko:wght@500&display=swap');

.hd
{
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(77,164,156,0.7707457983193278) 0%, rgba(0,255,248,0.5970763305322129) 100%);
}

a
{
	color:black;
	width:300px;
	background-color:red;
	
}

.zoom {
  padding: 10px;
  background-color: #b3edf2;
  transition: transform .2s; /* Animation */
  width: 300px;
  height: 60px;
  margin: 0 auto;
}

.zoom:hover {
  transform: scale(1.6); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
  color:white;
}

.form-text
{
	color:red;
} 



</style>

<script src="JS/form_val.js"></script>


</head>




<body>

<%


int pid=Integer.parseInt(request.getParameter("aid"));


PreparedStatement ps2=con.prepareStatement("select * from appoint where aid=? and astatus=?");
ps2.setInt(1,pid);    	
 ps2.setString(2,"Book");

PreparedStatement ps1=con.prepareStatement("UPDATE `appoint` SET `astatus`=?, WHERE aid=?");
ps1.setString(1,"complete");
ps1.setInt(2,pid); 
PreparedStatement ps=con.prepareStatement("select * from appoint where aid=? ");
ps.setInt(1,pid);    	
/* ps.setString(2,"complete"); and astatus=?*/

ResultSet rs=ps.executeQuery();


%>


 <%
    
 int no=(1);
	while(rs.next())
	{
	
	
	 %>


<div class="container my-4"  >
	<div class="row justify-content-center">
		<div class="col-12 shadow p-3 mb-5 bg-white">
			<h1 class=text-center>Your Order Details </h1>
			<hr>
			<p class="text-left text-bold">Bill No:<%=rs.getString(1)%></p>
			<p class="text-left">Bill Date: <%=rs.getString(4)%></p>
			<h5 class="text-right">Customer Details</h5>
			<p class="text-right">Name : <span class="text-muted"><%=rs.getString(3)%></span></p>
			<!-- <p class="text-right">Mobile : <span class="text-muted"></span></p>
			<p class="text-right">Delivery Address: <span class="text-muted"></span></p>
			
			<p class="text-right">City: <span class="text-muted"></span></p>
					
			<p class="text-right">LandMark : <span class="text-muted"></span></p>
 -->			
			

			<table class="table">
  <thead>
    <tr>
      <!-- <th scope="col">#</th> -->
      <th scope="col">Product No</th>
      <th scope="col">Product Name</th>
      <th scope="col">MRP Rs.</th>
      
      <th scope="col">Total Rs.</th>
    </tr>
  </thead>
  <tbody>
   
    <tr>
      <th scope="row"><%=no %></th>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(8)%></td>
     <td><%=rs.getString(8)%></td>
      <td></td>
      
      
    </tr>
   <% no=no+1; %>
    
  </tbody>
  <%
	}
							 

%>
</table>

		</div>
      <div class="text-light mt-5 mb-5 text-center small">
						<button onclick="window.print()" style="width: 100px">Print
						</button>
					</div>
        <!--  -->
	</div>

</div>

</body>
</html>