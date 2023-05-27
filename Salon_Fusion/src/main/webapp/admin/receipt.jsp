
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.text.*"%>
<%@ include file="connect.jsp"%>
<%@ include file="checklogin.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<style>
body {
	background: grey;
	margin-top: 120px;
	margin-bottom: 120px;
}
</style>


</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-12">
				
					<div class="card">
						<div class="card-body p-0">
							<div class="row p-5">
								<div class="col-md-6">

									<img src="img/log.jpg" height=150px width=250px>
								</div>

								<%!int uid;

	double amt;%>


								<%
								try
								{
								
PreparedStatement pp=con.prepareStatement("select max(`rid`)+1 from booking_receipt");
//pp.setString(1,1);
ResultSet rr=pp.executeQuery();
rr.next();
int no=rr.getInt(1);
//out.print(rr.getInt(1));




%>


								<div class="col-md-6 text-right">
									<p class="font-weight-bold mb-1">
										Invoice:<%=no%>
									</p>
									<%
                            DateFormat df=new SimpleDateFormat("yyyy-MM-dd");
	String dd=df.format(new java.util.Date());%>
									<p class="text-muted">
										Booking Date :
										<%=dd%></p>
								</div>
							</div>

							<%			

String un=session.getAttribute("track").toString();


	
PreparedStatement ps=con.prepareStatement("select * from treker_user where t_moible=?");
ps.setString(1,un);

ResultSet rs=ps.executeQuery();

while(rs.next())
{

uid=rs.getInt(1);	
	
%>

							<hr class="my-5">

							<div class="row pb-5 p-5">
								<div class="col-md-6">
									<p class="font-weight-bold mb-4">Client Information</p>
									<p class="mb-1"><%= rs.getString(2)%></p>

									<p><%= rs.getString(3)%></p>
									<p class="mb-1"><%= rs.getString(4)%></p>
									<p class="mb-1"><%= rs.getString(5)%>,<%= rs.getString(6)%></p>

								</div>
								<%
								
}		

						

 
	int eid=Integer.parseInt(request.getParameter("eid"));
	
	
PreparedStatement ss=con.prepareStatement("select * from trek_event where eid=?");
ss.setInt(1,eid);
ResultSet ss1=ss.executeQuery();
while(ss1.next())
{
%>
								<div class="col-md-6 text-right">
									<img src="img/<%= ss1.getString(6) %>" height=250px width=500px>
								</div>
							</div>

							<div class="row p-5">
								<div class="col-md-12">

									<table class="table">
										<thead>
											<tr>
												<th class="border-0 text-uppercase small font-weight-bold">ID</th>
												<th class="border-0 text-uppercase small font-weight-bold">Name</th>
												<th class="border-0 text-uppercase small font-weight-bold">Date</th>
												<th class="border-0 text-uppercase small font-weight-bold">Location</th>

											</tr>
										</thead>
										<tbody>

											<tr>
												<td>1</td>
												<td><%= ss1.getString(2)%></td>
												<td><%= ss1.getString(4)%></td>
												<td><%= ss1.getString(3)%></td>

											</tr>

										</tbody>
									</table>
								</div>
							</div>

							<div class="d-flex flex-row-reverse bg-dark text-white p-4">
								<div class="py-3 px-5 text-right">
									<div class="mb-2">Grand Total</div>
									<div class="h2 font-weight-light">
										Rs.<%= ss1.getString(5)%>
										/.
									</div>
								</div>



								<div class="py-3 px-5 text-right">
									<div class="mb-2">Sub - Total amount</div>
									<div class="h2 font-weight-light">
										Rs.<%= ss1.getString(5)%>
										
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="text-light mt-5 mb-5 text-center small">
						<button onclick="window.print()" style="width: 100px">Print
						</button>
					</div>


				</form>
			</div>
		</div>


	</div>

	<%

   PreparedStatement tt2=con.prepareStatement("select count(*) from `booking_receipt`,`trek_event`,treker_user where treker_user.uid=booking_receipt.uid and trek_event.eid=booking_receipt.eid and t_moible=? and booking_receipt.eid=? ");
	tt2.setInt(2,eid);
	tt2.setString(1,un);

	ResultSet rs2=tt2.executeQuery();
	rs2.next();
	if(rs2.getString(1).equals("1"))
	{

	 %>
	<script>
		if (confirm("Event already Booked"))
			location = "dashboard.jsp";
		else
			location = "dashboard.jsp";
	</script>
	<%
	}else
		{
          	
            	amt=Double.parseDouble(ss1.getString(5));
          	
        	
        		PreparedStatement tt=con.prepareStatement("INSERT INTO `booking_receipt`(`uid`, `eid`, `r_amount`, `rdate`, `b_status`) VALUES(?,?,?,?,?)");
        		//tt.setInt(1,no);
        		tt.setInt(1,uid);
        		tt.setInt(2,eid);
        		tt.setDouble(3,amt);
        		tt.setString(4,dd);
        		tt.setString(5,"Active");
        		
        		PreparedStatement tt1=con.prepareStatement("INSERT INTO `event_treker`(`uid`, `eid`) VALUES(?,?)");
        		tt1.setInt(1,uid);
        		tt1.setInt(2,eid);
        		int y1=tt1.executeUpdate();
        		int x=tt.executeUpdate();
        	
        		%>


	
	<%
		}
}
}
catch(Exception e)
{
	out.println(e);

}
	%>


</body>
</html>






