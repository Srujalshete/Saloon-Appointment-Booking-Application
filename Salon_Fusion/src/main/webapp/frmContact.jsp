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
	
	if(subMobile==0 && subEmail==0 && subName==0 && subEmpty==0)
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

<div class="yellow_bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">
                                <h2>Contact</h2>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- contact -->
            <div id="contact" class="contact">
                <div class="container">
                    <div class="row">
                        <div class=" col-md-12">
                            <div class="title">
                                <h2>Request  A<strong class="white"> Call  Back</strong></h2>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">

                            <form action="contactdata.jsp" method="get" id="frmregi">
                                <div class="row">

                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Your Name" type="text" name="txtname" onblur="validateName(this,document.getElementById('errName'),'Invalid Name')" > 
							<span class=text-danger id=errName></span>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Phone Number" type="text" name="txtmob" onblur="validateMobile(this,document.getElementById('emailErr'),'Enter Valid Mobile')" >
							<span class=text-danger id=emailErr></span>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Email" type="email" name="txtemail" onblur="validateEmail(this,document.getElementById('erremail'),'Enter Valid Email')" > 
							<span class=text-danger id=erremail></span>
                                    </div>
                                    <!-- <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Date" type="date" name=" Date">
                                    </div> -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <textarea class="textarea" placeholder="Message"  name="txtmsg" onblur="validateEmpty(this,document.getElementById('errSub'),'Enter the Message')" > 
							</textarea><span class=text-danger id=errSub></span>
							
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <button type="submit" class="send" onclick="registerFinal()">Send</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="img-box">
                                <figure><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.2595789955417!2d73.84541451420407!3d18.517168274112763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c070b7b4ecb5%3A0x931492d777dc157b!2sNR%20Classes%20(%20BCS%20%2F%20BCA%20%2F%20BCA%20Classes%20%2F%20BCS%20Classes%20%2F%20In%20Pune)!5e0!3m2!1sen!2sin!4v1644592291868!5m2!1sen!2sin" width="500" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</figure>
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