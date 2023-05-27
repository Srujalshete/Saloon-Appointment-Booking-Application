<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@ include file="includes/links.html"  %>
<%@ include file="includes/navbar.html"  %>

 <script src=js/jquery.js></script>
<script src=js/form_val.js></script>
   
   <script>
function registerFinal()
{
	
	if(subMobile==0 && subEmail==0 && subName==0 && subEmpty==0 subPassword==0 && subUsername==0 && subCity==0 && subPin==0)
	{
		
		document.getElementById("frmregi").submit();
		
	}
	else
	{
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
                                <h2>Registration<strong class="white"> On</strong></h2>
                            </div>
                        </div>
                    </div>

                    <div class="row d-flex justify-content-center">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ">

                            <form action="custregidata.jsp" method="get" id="frmregi">
                                <div class="row ">

                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Full Name" type="text" name="txtfname" onblur="validateName(this,document.getElementById('errName'),'Enter the Name')" > 
							<span class="text-danger" id=errName></span>
                                    </div>
                                     <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="User Name" type="text" name="txtuname" onblur="validateUsername(this,document.getElementById('erruName'),'Invalid Name')" > 
							<span class="text-danger wid" id=erruName></span>
                                    </div>
                                     <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Password" type="password" name="txtpass" onblur="validatePassword(this,document.getElementById('emailPass'),'')" >
							<span class="text-danger wid" id=emailPass></span>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Phone Number" type="text" name="txtmob" onblur="validateMobile(this,document.getElementById('errMob'),'Enter the Valid Mobile')" > 
							<span class="text-danger wid" id=errMob></span>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Email" type="email" name="txtemail" onblur="validateEmail(this,document.getElementById('emailErr'),'Enter Valid Email')" >
							<span class="text-danger wid" id=emailErr></span >
                                    </div>
                                   
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12" >
                                        <select class="form-control" style="height:50px" name="txtgen" onblur="validateEmpty(this,document.getElementById('errgen'),'Select the Gender')" >
                                        <option value="">--Please choose--</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        </select>
                                        <span class="text-danger wid" id=errgen></span >
                                    </div>
                                    
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <textarea class="textarea" placeholder="Address"  name="txtaddr" onblur="validateEmpty(this,document.getElementById('erradd'),'Enter the Address')" ></textarea>
                                   <span class="text-danger wid" id=erradd></span>
                                    </div>
                                     <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="City" type="text" name="txtcity" onblur="validateCity(this,document.getElementById('errcity'),'Enter the City')" > 
							<span class="text-danger wid" id=errcity></span>
                                    </div>
                                     <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Pincode" type="text" name="txtpin" onblur="validatePin(this,document.getElementById('errland'),'Enter the Pincode')" > 
							<span class="text-danger wid" id=errland></span>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <button type="submit" class="send" style="background-color:gray;margin-left:180px" onclick="registerFinal()"> Register</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="img-box">
                                <figure><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.2595789955417!2d73.84541451420407!3d18.517168274112763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c070b7b4ecb5%3A0x931492d777dc157b!2sNR%20Classes%20(%20BCS%20%2F%20BCA%20%2F%20BCA%20Classes%20%2F%20BCS%20Classes%20%2F%20In%20Pune)!5e0!3m2!1sen!2sin!4v1644592291868!5m2!1sen!2sin" width="500" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</figure>
                            </div> -->
                        </div>
                          <div class="row my-4">
                        <div class=" col-md-12 d-flex justify-content-center">
                            <div class="title">
                                <h2 ><a href="frmLogin.jsp" style="font-size:20px;color:white">Login Now </a></h2>
                            </div>
                        </div>
                    </div>
                   
                    </div>
                </div>
            
            <!-- end contact -->


</body>

<%-- <%@ include file="includes/footer.html"  %>
 --%><%@ include file="includes/links2.html"  %>

</html>