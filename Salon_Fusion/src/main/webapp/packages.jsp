<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="includes/links.html"  %>
<%@ include file="includes/navbar.html"  %>
<%@include file="includes/conn.jsp" %>
<title>Services</title>
</head>
<body>





 <div class="yellow_bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">
                                <h2>Our Packages</h2>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- service -->
            <div id="service" class="service">
                <div class="container">

                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>
                        <% 
PreparedStatement ps=con.prepareStatement("select * from packages");
   	
ResultSet rs=ps.executeQuery();
    	
   	%>
   	
                                    
                                    
                        <div class="carousel-inner">
                            <div class="carousel-item active">


                                <div class="container">
                                    <div class="carousel-caption">
                                   
                                        <div class="row">
                                         <%
                                    while(rs.next())
	{
	
	 %>
                                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12" >
                                                <div class="service_box" style="height:300px">
                                                    <figure><img src="images/<%=rs.getString(4)%>" style="height:170px;width:300px"></figure>
                                                    <h3><%=rs.getString(2)%></h3>
                                                    <p><%=rs.getString(5)%></p>
                                                </div>
                                            </div>
                                            
                                              <%
	}

%> 
                                            
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                            
                            </div>
                            
                            
                    </div>

                </div>
            </div>
            <!-- end service -->





</body>

<%@ include file="includes/footer.html"  %>
<%@ include file="includes/links2.html"  %>

</html>