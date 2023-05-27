<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Salon</title>
<%@ include file="includes/links.html"  %>
<%@ include file="includes/navbar.html"  %>

</head>

<body>
 <!-- start slider section -->
            <div class="slider_section banner_bg">
                <img src="images/banner.jpg">
                <div class="container">
                    <div class="text_box">
                        <span>Stylish Hair</span>
                        <h1>Cutting<br> 
                for New Look</h1>
                        <a href="frmContact.jsp">Contact Us</a>
                    </div>
                </div>
            </div>

            <!-- end slider section -->
            
             <!-- service -->
            <div id="service" class="service">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="ourheading">
                                <h2>Our<strong class="white_ll"> Branches</strong></h2>
                                <span> incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n</span>
                            </div>
                        </div>
                    </div>

                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">

                                <div class="container">
                                    <div class="carousel-caption">
                                        <div class="row">
                                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                                <div class="service_box">
                                                    <figure><img src="images/img.jpg" style="height:200px"></figure>
                                                    <h3>Pune Branch</h3>
                                                    <div class="address">
                                        <h3>address</h3>
                                        <p>
                                            Address: 73 Canal Street, pune, NY
                                            <br> Tel: +1 123 456 789
                                            <br> Fax: +1 123 456 789
                                            <br> Email: support@demo.com</p>
                                    </div>                                                </div>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                                <div class="service_box">
                                                    <figure><img src="images/img.jpg" style="height:200px"></figure>
                                                    <h3>Nashik Branch</h3>
                                                    <div class="address">
                                        <h3>address</h3>
                                        <p>
                                            Address: 73 Canal Street, nashik, NY
                                            <br> Tel: +1 123 456 789
                                            <br> Fax: +1 123 456 789
                                            <br> Email: support@demo.com</p>
                                    </div> </div>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                                <div class="service_box">
                                                    <figure><img src="images/img.jpg" style="height:200px"></figure>
                                                    <h3>Mumbai Branch</h3>
                                                    <div class="address">
                                        <h3>address</h3>
                                        <p>
                                            Address: 73 Canal Street, mumbai, NY
                                            <br> Tel: +1 123 456 789
                                            <br> Fax: +1 123 456 789
                                            <br> Email: support@demo.com</p>
                                    </div> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>
                             <!-- end service -->
                             <!-- Time  -->
                             
                             <div class="opening">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="ourheading">
                                        <h2>Opening<strong class="white"> Times</strong></h2>
                                    </div>
                                </div>
                            </div>
                            <div class="opening_bg">
                                <div class="row">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                        <div class="times">
                                            <ul>
                                                <li><span>Monday</span><span class="float-right">9:00am       <strong class="bbbb">9:00pm</strong></span></li>
                                                <li><span>Tuesday </span><span class="float-right">9:00am       <strong class="bbbb">9:00pm</strong></span></li>
                                                <li><span>Wednesday</span><span class="float-right">9:00am      <strong class="bbbb">9:00pm</strong></span></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                        <div class="times">
                                            <ul>
                                                <li><span>Thursday </span><span class="float-right">9:00am       <strong class="bbbb">9:00pm</strong></span></li>
                                                <li><span>Friday</span><span class="float-right">9:00am       <strong class="bbbb">9:00pm</strong></span></li>
                                                <li><span>Saturday</span><span class="float-right">9:00am        <strong class="bbbb">9:00pm</strong></span></li>
                                                <li><span>Sunday</span><span class="float-right">Close</span> </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                             
                             <!--  end time-->


</body>





<%@ include file="includes/footer.html"  %>
<%@ include file="includes/links2.html"  %>

</html>