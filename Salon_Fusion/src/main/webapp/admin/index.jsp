<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <%@include file="../includes/links3.html" %>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>

<script src=../js/jquery.js></script>
<script src=../js/form_val.js></script>
<style >

.wid{

font-size:15px;
padding:20px;


}

</style>


</head>
<body style="background-image:url(../images/admin.jpg); background-attachment: fixed;background-repeat: no-repeat;background-size:cover;">

    <br>
    

<section>

<div class="container" >

   <label for="exampleInputEmail1" class="bg-" style="margin-top:250px;background:;color:black;width:100%;padding:px;text-align:center;font-size:50px;font-family:Arial-black">Admin Login  !</label>
 
 <div class="row align-self-center" style="margin-bottom:0px;height:;width:%">
    <div class="col-4 align-self-center px-lg-5 py-5 bg-dark shadow p-3 mb-6 rounded" id=filter-blur style="margin-left:350px;width:0px;margin-top:10px;height:250px;color:green">
<form action=login_data.jsp  method="get"  id="frmregi">
  
  
  <div class="form-group">
 <!-- <label for="exampleInputEmail1"  >Username</label>
 -->    <input type="text" class="form-control wid" id="exampleInputEmail1" placeholder="Username" name=txtaname aria-describedby="emailHelp" >
  </div>
  <br>
  <div class="form-group">
   <!-- <label for="exampleInputPassword1" >Password</label>
 -->    <input type="password" class="form-control wid" id="exampleInputPassword1" placeholder="Password" name=txtpass >
  </div>
 <br>
  <a  ><button type="submit" class="btn btn-info" style="width:100%;font-size:18px;background:" id=login >Login</button></a>
 <br>
 <br>
 <!-- <a href="../index.jsp"><button type="button" class="btn btn-secondary" style="width:100%;font-size:18px;background:" id=login>Cancel</button></a>
 -->  <br>
   <br>
  <!-- <div class="form-group text-center " ><a href="frmhostelRegister.jsp" style="color:blue">Not Registerd? Create an account.</a></div>
   -->  
</form>
</div>
<!-- <div class="col-6">
    <img src="images/login.jpg" height=500px width=600px  style="margin-top:0px;margin-left:-20px;margin-bottom:px">
    </div> -->
    </div>
  </div>



</section>




</body>

</html>