<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Salon</title>
<%@ include file="includes/links.html"  %>
<%@ include file="includes/navbar.html"  %>

 <script src=js/jquery.js></script>
<script src=js/form_val.js></script>
   
   <script>
function registerFinal()
{
	
	if(subPassword==0 && subUsername==0 )
	{
		
		document.getElementById("frmregi").submit();
		
	}
	else
	{o0 
		alert("Enter all fields properly");
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
                                <h2>Contact</h2>

                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- contact -->
            <div id="contact" class="contact">
                <div class="container">
                    <div class="row">
                        <div class=" col-md-12">
                            <div class="title">
                                <h2>Login<strong class="white"> Here And Book</strong> Your Appointment</h2>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">

                            <form action="logindata.jsp" method="get" id="frmregi">
                                <div class="row">

                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="User Name" type="text" name="txtuname" onblur="validateUsername(this,document.getElementById('erruName'),'Invalid User Name')" > 
							<span class="text-danger wid" id=erruName></span>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Password" type="password" name="txtpass" onblur="validatePassword(this,document.getElementById('emailPass'),'')" >
							<span class="text-danger wid" id=emailPass></span>
                                    </div>
                                    <br>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <button type="submit" class="send" style="background-color:gray;margin-left:180px" onclick="registerFinal()">Login</button>
                                    </div>
                                </div>
                            </form>
                            <div class="row my-4">
                        <div class=" col-md-12 d-flex justify-content-center">
                            <div class="title">
                                <h2><a href="frmLogin.jsp" style="font-size:20px;color:white"> Register On </a></h2>
                            </div>
                        </div>
                    </div>
                        </div>
                         
                       <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="about_img">
                                <figure><img src="images/about_img.png" alt="#" /></figure>
                            </div>
                        </div>
                        
                        
                        
                    </div>
                </div>
            </div>
            <!-- end contact -->


</body>

<%@ include file="includes/footer.html"  %>
<%@ include file="includes/links2.html"  %>

</html>