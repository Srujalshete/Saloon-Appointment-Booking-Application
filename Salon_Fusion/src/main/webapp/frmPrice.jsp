<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="includes/links.html"  %>
<%@ include file="includes/navbar.html"  %>
<%@include file="includes/conn.jsp" %>

<script src=js/jquery.js></script>
<script src=js/form_val.js></script>
   
  
</head>
<body>


 <div class="yellow_bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">
                                <h2>Pricing Table</h2>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- pricing -->
            <div class="pricing">
                <div class="container">

                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 mar_bottom">
                            <div class="pricing_img">
                                <figure><img src="images/vvv.png" alt="#" />
                                </figure>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 pad_left">
                            <div class="pricing_box">
                                <div class="list">
                                <% 
PreparedStatement ps=con.prepareStatement("select * from packages");
   	
ResultSet rs=ps.executeQuery();
    	
   	%>
   	
                                    <ul>
                                    <%
                                    while(rs.next())
	{
	
	 %>
                                        <li><span class="float-left"><%=rs.getString(2)%></span><span class="float-right"><%=rs.getString(3)%></span></li>
                                                                           <%
	}

%>
                                    </ul>
                                    <% 
PreparedStatement ps1=con.prepareStatement("select * from services");
   	
ResultSet rs1=ps1.executeQuery();
    	
   	%>
                                    <ul>
                                    <%
                                    while(rs1.next())
	{
	
	 %>
                                        <li><span class="float-left"><%=rs1.getString(2)%></span><span class="float-right"><%=rs1.getString(3)%></span></li>
                                                                           <%
	}

%>
 </ul>
                                   <!--  <a href="#">Read more</a> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>
                    


</body>

<%@ include file="includes/footer.html"  %>
<%@ include file="includes/links2.html"  %>


</html>