<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="/CSS/Combined.css" />
<link rel="stylesheet" type="text/css" href="../CSS/notifIt.css">
<link rel="stylesheet" type="text/css"  href="/CSS/Combined.Style.css"  />
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap-select.css" />
<link rel="stylesheet" type="text/css" href="../CSS/dataTables.bootstrap.css" />
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap-dialog.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Combined.css" />
<link rel="stylesheet" type="text/css" href="../CSS/notifIt.css" />
<link rel="shortcut icon" href="../IMAGES/favicon.ico" />

<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("Password").value;
        var confirm_password = document.getElementById("confirm_password").value;
        if (password != confirm_password) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>

<title>Sign Up</title>

</head>
<body >
	<div class="container ">
		<div class="modal-dialog modal-midle"
			style="width: 500px;">
			<div class="modal-content">
				<div class="modal-body  ">
					<form name="FarmSignUpForm" id="iFarmSignUpForm" action="../FarmSignUpController" method="post">
						<div align="center">
							<font
								style="font-style: normal; font-size: 25px; color: #808080;">
								Farm/Heard User Sign Up</font>
						</div>
						<table class="table" id="HeadTbl">
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Full Name</font> 
											<input type="text" placeholder="Fullame" name="name" id="iname" class="form-control input-sm LoginFields" required="required">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Mobile No.</font> 
											<input type="text" placeholder="Mobile No" name="mobno" id="mobno" maxlength="10" class="form-control input-sm LoginFields" required="required">
									</div>

								</td>
							</tr>						
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Email Id</font> <input type="text" placeholder="Email Id" name="email_id" id="email_id" class="form-control input-sm LoginFields" required="required">
									</div>

								</td>
							</tr>
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Address</font> 
											<input type="text" placeholder="Address" name="address" id="address" class="form-control input-sm LoginFields" required="required">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											User Name</font> 
											<input type="text" placeholder="User Name" name="user_name" id="user_name" class="form-control input-sm LoginFields" required="required">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Password</font> 
											<input type="password" placeholder="Password" name="password" id="password" class="form-control input-sm LoginFields" required="required">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Confirm Password</font> 
											<input type="password" placeholder="Retype Password" name="confirm_password" id="confirm_password" class="form-control input-sm LoginFields" required="required">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Farm Name</font> 
											<input type="text" placeholder="Farm Name" name="farmName" id="ifarmName" class="form-control input-sm LoginFields" required="required">
									</div>

								</td>
							</tr>
								<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Farm Animal Type</font> &nbsp; &nbsp;
											  <input type="radio" name="animalType" value="goat" checked="checked" class="radio-inline"> Goat
											  <input type="radio" name="animalType" value="cow" class="radio-inline"> Cow
											  <input type="radio" name="animalType" value="poultry" class="radio-inline"> Poultry
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 32px" align="center">
										<button type="submit" class="btn btn-success btn-lg FarmSignUpBtn" >Save</button>
										<br>
										<br>
									</div>
								</td>
							</tr>
							
						</table>
					</form>
				</div>
			</div>
		</div>
		<!-- Bank In -->

	</div>
<script type="text/javascript" src="../JS/jquery.min.js"></script>
<script type="text/javascript" src="../JS/bootstrap.min.js"></script>
<script type="text/javascript" src="../JS/bootstrapValidator.js"></script>
<script type="text/javascript" src="../JS/notifIt.js"></script>
	
<script type="text/javascript">

$('.FarmSignUpBtn').on('click', function() {
	
</script>	
<%
String SuccessMessage=(String)session.getAttribute("successMsg");

if(SuccessMessage!=null || session.getAttribute("successMsg")!=null){
%>

<script type="text/javascript">
	var SuccessMsg='<%=SuccessMessage%>';	
	notif({
		type: "success",
		msg: SuccessMsg,
		position: "center",
		width: 500,
		height: 40,	
		time:2000
	});
	</script>
	<%}%>
<%
String ErrorMessage=(String)session.getAttribute("failureMsg");

if(ErrorMessage!=null || session.getAttribute("failureMsg")!=null){	
	%>
	<script type="text/javascript">
	var ErrorMsg='<%=ErrorMessage%>';	
	notif({
		type: "error",
		msg: ErrorMsg,
		position: "center",
		width: 500,
		height: 40,	
		time:2000		
	});
	</script>
	<%}
    session.removeAttribute("successMsg");
    session.removeAttribute("failureMsg");
    
	%>
	<script type="text/javascript">
	});
</script>
</body>
</html>