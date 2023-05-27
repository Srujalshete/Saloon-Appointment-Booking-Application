<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file="../includes/conn.jsp" %>
    <%-- <%@include file="checklogin3.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminDashboard </title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>


    

    <!-- <script type="text/javascript">
function noBack(){window.history.forward();}
noBack();
window.onload=noBack;
window.onpageshow=function(evt){if(evt.persisted)noBack();}
window.onunload=function(){void(0);}
</script> -->


   
 <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
       h4 {
    font-family: Arial, Verdana;
    font-weight: 800;
    font-size: 26px;
    color: #091f2f;
    text-transform: uppercase;
    padding: 10px;
}

.fun {
 
  color: white;
  font-size:20px;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;

}

.mar{
margin-top:20px;
}
      
    </style>
 <script>
    function addEventData()
    {
    	if(subEmpty==0)
    	{
    		
    		document.getElementById("frmAddEvent").submit();
    		
    	}
    	else
    	{
    		alert("Enter all fields properly");
    	}
    }
    
    
    function addpack()
    {
    	 ob=new XMLHttpRequest();
         ob.open("GET","frmAddPackage.jsp");
         ob.send();
         ob.onreadystatechange=function()
         {

         if(ob.readyState==4)
         {
             document.getElementById("frm").innerHTML=ob.responseText;
         }
    	
    }
    }
    function addservices()
    {
    	 ob=new XMLHttpRequest();
         ob.open("GET","frmAddservices.jsp");
         ob.send();
         ob.onreadystatechange=function()
         {

         if(ob.readyState==4)
         {
             document.getElementById("frm").innerHTML=ob.responseText;
         }
    	
    }
    }
    function viewpack()
    {
    	 ob=new XMLHttpRequest();
         ob.open("GET","frmViewpack.jsp");
         ob.send();
         ob.onreadystatechange=function()
         {

         if(ob.readyState==4)
         {
             document.getElementById("frm").innerHTML=ob.responseText;
         }
    	
    }
    }
    
    function viewservices()
    {
    	 ob=new XMLHttpRequest();
         ob.open("GET","frmViewservice.jsp");
         ob.send();
         ob.onreadystatechange=function()
         {

         if(ob.readyState==4)
         {
             document.getElementById("frm").innerHTML=ob.responseText;
         }
    	
    }
    }
    
    function viewappoint()
    {
    	 ob=new XMLHttpRequest();
         ob.open("GET","frmViewappoint.jsp");
         ob.send();
         ob.onreadystatechange=function()
         {

         if(ob.readyState==4)
         {
             document.getElementById("frm").innerHTML=ob.responseText;
         }
    	
    }
    }
    
    function viewuser()
    {
    	 ob=new XMLHttpRequest();
         ob.open("GET","frmViewuser.jsp");
         ob.send();
         ob.onreadystatechange=function()
         {

         if(ob.readyState==4)
         {
             document.getElementById("frm").innerHTML=ob.responseText;
         }
    	
    }
    }
    
    
    function updatepack()
    {
    	 ob=new XMLHttpRequest();
         ob.open("GET","frmupdatePack.jsp");
         ob.send();
         ob.onreadystatechange=function()
         {

         if(ob.readyState==4)
         {
             document.getElementById("frm").innerHTML=ob.responseText;
         }
    	
    }
    }
    
    
    
   
    
   
    
     </script>
    <link href="dashboard.css" rel="stylesheet">
  </head>
  <body>
    


<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg- sidebar collapse " style="background-image:url(../images/chku.jpg)" >
      <div class="sidebar-sticky pt-3 text-center" style="color:black">
      
       	
             <!-- <a class=" navbar-brand btn- " href="AdminDashboard.jsp.jsp" style="background:padding:0px;color:gray"><h4 class="text-center">ADMINSIDE</h4></a>
 -->              <br>
              <br>
              
        <ul class="nav flex-column" >
          <li class="nav-item mar">
            <a class="nav-link active fun btn btn-warning" href="admindash.jsp" >
              <span data-feather="home "></span>
              Dashboard <span class="sr-only mar">(current)</span>
            </a>
            <br>
          </li>
         
          <li class="nav-item mar">
            <a class="nav-link fun btn btn-warning"  onclick="addpack()">
              <span data-feather="shopping-cart"></span>
             Add Packages
            </a>
             <br>
          </li>
           <li class="nav-item mar">
            <a class="nav-link fun btn btn-warning"  onclick="addservices()">
              <span data-feather="bar-chart-2"></span>
             Add Services
            </a>
             <br>
          </li>
          
          <li class="nav-item mar">
            <a class="nav-link fun btn btn-warning"  onclick="viewpack()">
              <span data-feather="file"></span>
              View Packages
            </a>
             <br>
          </li>
          
          <li class="nav-item mar">
            <a class="nav-link fun btn btn-warning"  onclick="viewservices()">
              <span data-feather="file"></span>
              View Services
            </a>
             <br>
          </li>
          
          
          
           <li class="nav-item mar">
            <a class="nav-link fun btn btn-warning"  onclick="viewappoint()">
              <span data-feather="file"></span>
              View Appointment
            </a>
             <br>
          </li>
          
          <!-- <li class="nav-item mar">
            <a class="nav-link fun btn btn-warning"  onclick="updateservices()">
              <span data-feather="file"></span>
              Update Services
            </a>
             <br>
          </li>
          
           <li class="nav-item mar">
            <a class="nav-link fun btn btn-warning"  onclick="updatepack()">
              <span data-feather="file"></span>
              Update Packages
            </a>
             <br>
          </li> -->
          
          <li class="nav-item mar">
            <a class="nav-link fun btn btn-warning"  onclick="viewuser()">
              <span data-feather="file"></span>
              View All Users
            </a>
             <br>
          </li>
          
          
          <!-- <li class="nav-item">
            <a class="nav-link fun"  onclick="viewOrder()">
              <span data-feather="users"></span>
             View Order
            </a>
          </li> -->
        
        <li class="nav-item mar ">
            <!-- <a class="nav-link fun btn btn-warning" href="logout.jsp">
              <span data-feather="file"></span>
             logout
            </a> -->
             
          </li>
         
        </ul>
        <br>
      </div>
    </nav>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4 ">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom container bg-" >
        <!-- <h1 class="h2 text-warning">HOSTEL Dashboard</h1> -->
        <a class=" navbar-brand btn- " href="AdminDashboard.jsp.jsp" style="background:padding:0px;color:gray"><h4 class="text-center">ADMINSIDE</h4></a>
        <a class="nav-link fun btn btn-info float-left" href="logout.jsp">
              <span data-feather="file"></span>
             logout
            </a>
        </div>
      <div id=frm >
      
      <% 

      int pid=Integer.parseInt(request.getParameter("pid"));
  	
  	
      
   	
PreparedStatement ps=con.prepareStatement("select * from packages where pid=?");
ps.setInt(1,pid);    	
ResultSet rs=ps.executeQuery();
    	//rs.next();
    		//int uid=Integer.parseInt(request.getParameter(rs.getString(2)));
    		//int eid=Integer.parseInt(request.getParameter(rs.getString(3)));
   	%>
     
      <div class="row">
         <div class="col-sm-5 " style="margin-left:170px">
        <div class="well" >
        <div id=bo class="shadow p-4 mb-6 rounded" >
        <form action=updatepackdata.jsp method="get" >
     <div class=info><h2 class="text-center" style="color:#4682B4;">Update Packages </h2></div>
     <hr style="background-color:#4682B4;" >

  <%
    
    
	while(rs.next())
	{
	
	
	 %>
         <div class="form-row">
        
    <div class="form-group offset- col-md-6">
    <label for="inputEmail4">Package No : </label>
      <input type="text" class="form-control" value="<%=rs.getString(1)%>" name="pid" id="inputEmail4" readonly>
    </div>
    <div class="form-group offset- col-md-6">
    <label for="inputEmail4">Package name : </label>
      <input type="text" class="form-control" value="<%=rs.getString(2)%>" name="txtpname" id="inputEmail4" readonly>
    </div>
   
  </div>

<div class="form-row">
<div class="form-group col-md-6">
    <label for="inputEmail4">Price : </label>
      <input type="text" class="form-control" value="<%=rs.getString(3)%>"  name="txtprice" id="inputEmail4" >
    </div>
    <%-- <div class="form-group col-md-6">
    <label for="inputEmail4">Picture : </label>
      <input type="file" class="form-control" value="<%=rs.getString(4)%>"  name="txtimage" id="inputEmail4" >
    </div> --%>
   
  </div>

       <div class="form-row">
    <div class="form-group offset- col-md-12">
      <label for="inputEmail4">Description : </label>
      <input type="text" class="form-control" value="<%=rs.getString(5)%>"  name="txtdesc" id="inputEmail4" >
    </div>
   
  </div>
  
<%
	}

%>
<br>   

<div class="mb-3" >
<input type=submit  class="form-control btn btn-primary"  value="Update Product" >
          
        </div>
</form>


</div>
</div>



<!-- end update product code -->
</div>
      </div>
      </div>
      
	
          <canvas class="my-4 w-100" id="myChart" width="900" height="380" ></canvas>

     
    </main>
  </div>
  </div>


    

        


</body>
</html>