<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@ include file="includes/conn.jsp"  %>
<%@ include file="includes/links.html"  %>
<%@ include file="includes/navbar2.html"  %>

 <script src=js/jquery.js></script>
<script src=js/form_val.js></script>
   
   <script>
function registerFinal()
{
	
	if(subEmpty==0 )
	{
		
		document.getElementById("frmregi").submit();
		
	}
	else
	{
		alert("Enter all fields properly");
	}
}



function loadcity(a)
{
	/* alert(a); */
ob=new XMLHttpRequest();
    ob.open("GET","loadprice.jsp?aid="+a);
    ob.send();
    ob.onreadystatechange=function()
    {

    if(ob.readyState==4)
    {
        document.getElementById("result1").innerHTML=ob.responseText;
    }S
}
}


</script>
   


</head>
<body>

<!-- <div class="yellow_bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">
                                <h2>Register </h2>

                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- contact -->
            <div id="contact" class="contact my-">
                <div class="container">
                    <div class="row">
                        <div class=" col-md-12 d-flex justify-content-center">
                            <div class="title">
                                <h2>Book Your<strong class="white"> Appointment for</strong> Services</h2>
                            </div>
                        </div>
                    </div>

                    <div class="row d-flex justify-content-center">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ">

                            <form action="appointdata.jsp" method="get" id="frmregi">
                                <div class="row ">
                                <% 

       	
PreparedStatement ps=con.prepareStatement("select sname from services ");
ResultSet rs=ps.executeQuery();
    	
   	%>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <select class="form-control" style="height:50px" onchange="loadcity(this.value)"  name="txtser" onblur="validateEmpty(this,document.getElementById('errser'),'Select Appointment Services')" > 
							<option>select services</option>
							
							 <%
    
    
	while(rs.next())
	{
	
	
	 %>
							<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
							<%
	}
							 

%>
							</select>
							<span class="text-danger wid" id=errser></span>
                                    </div>
 
 <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <Select  class="form-control fun" style="height:50px" id=result1  name="txtprice"  style="padding:;color:"  onblur="validateEmpty(this,document.getElementById('mberr'),'price')"  >
                                       
</select><span class="text-danger wid" id=mberr></span> </div>
 
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Appointment Date" type="date" name="txtdate" onblur="validateEmpty(this,document.getElementById('errcity'),'Select Appointment Date')" > 
							<span class="text-danger wid" id=errcity></span>
                                    </div>

                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Appointment Time" type="text" name="txttime" onblur="validateEmpty(this,document.getElementById('errName'),'Enter the Time')" > 
							<span class="text-danger" id=errName></span>
                                    </div>
                                    
                                    
                                 
                                   
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12" >
                                        <select class="form-control" style="height:50px" name="txtarea" onblur="validateEmpty(this,document.getElementById('errgen'),'Select the Location')" >
                                        <option value="">--choose Our Area--</option>
                                        <option value="Pune">Pune</option>
                                        <option value="Nashik">Nashik</option>
                                        <option value="Mumbai">Mumbai</option>
                                        </select>
                                        <span class="text-danger wid" id=errgen></span >
                                    </div>
                                    
                                    
                                     
                                     
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <button type="submit" class="send" style="background-color:gray;margin-left:180px" onclick="registerFinal()">Book </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="img-box">
                                <figure><img src="images/apo.png" width="500" height="400" style="border:0;" >
</figure>
                            </div>
                        </div>
                         
                   
                    </div>
                </div>
            
            <!-- end contact -->


</body>

<%-- <%@ include file="includes/footer.html"  %>
 --%><%@ include file="includes/links2.html"  %>

</html>