<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>




<%@include file="../includes/conn.jsp" %>
<style>
#user {
	padding: 18px;
}
label{
color:white; 

}
</style>

</head>
<body>
	<div class="container px-lg-5 frm" style="margin-top: 50px">
		<div class="row mx-lg-n5 d-flex justify-content-center" style="margin-left: 200px">
			<!-- <div class="col py-3 px-lg-2 border bg-light ">

				<img alt="" src="../img/bar.jpg" height=630px width=550px>

			</div> -->
			<div class="col-5 py-3 px-lg-5 border bg-dark ">
				<form action=servedata.jsp method=get id=frmAddEvent>
					<h2 class="text-center bg-warning"
						style="background-color: ; width: 100%; padding: 15px; text-align: center; color: white">
						Services Details</h2>
					<br>
					<div class=row>
						<div class=col>
							<div class="mb-3">
								<label for="usename" class="form-label">Services Name</label> <input
									type="text" class="form-control" id="user" name="txtname"
									placeholder="Event Name"
									onblur="validateEmpty(this,document.getElementById('errName'),'Enter Valid Name')">
								<small id="errName" class="text-danger"></small>
							</div>
						</div>
						
					</div>
					
					<div class=row>
						
							<div class=col>
							<div class="mb-3">
								<label for="password" class="form-label">Services Picture</label> 
								<input type="file" class="form-control" id="" name="txtimg" onblur="validateEmpty(this,document.getElementById('errpic'),'Enter Valid Image')">
								<small id="errpic" class="text-danger"></small>
							
						</div>
						</div>
						
					</div>
					
					<div class=row>
						<div class=col>
							<div class="mb-3">
								<label for="password" class="form-label">Services Rate</label> <input
									type="text" class="form-control" id="user" name="txtfee"
									placeholder="Event Fee"
									onblur="validateEmpty(this,document.getElementById('errfee'),'Enter Valid Name')">
								<small id="errfee" class="text-danger"></small>
							</div>
						</div>
						
					</div>
					
					
					
					<div class="mb-3">
						<label for="password" class="form-label">Services_Details / Description</label>
						<textarea class="form-control" id="user" col=4 name="txtdet"
							placeholder="Event Details"
							onblur="validateEmpty(this,document.getElementById('errDetails'),'Enter Details')"
							required></textarea>
						<small id="errDetails" class="text-danger"></small>
					</div>
					
				
					<div class="mb-3" style="margin-left: 80px">
						<input type="submit" value="Add Services" onclick="addEventData()"
							style="width: 200px; font-size: 18px;color:white" class="btn btn-warning">
					</div>
				</form>

			</div>
		</div>
	</div>

	<br>
	<br>
</body>
</html>