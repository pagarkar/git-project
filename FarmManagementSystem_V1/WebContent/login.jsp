<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="CSS/bootstrap.css" >
<link rel="stylesheet" type="text/css" href="CSS/Combined.css" >
<link rel="stylesheet" type="text/css" href="CSS/notifIt.css">
<link rel="stylesheet" type="text/css" href="CSS/Combined.Style.css"  />
<link rel="stylesheet" type="text/css" href="CSS/bootstrap.css">
<link rel="stylesheet" type="text/css" href="CSS/bootstrap-select.css">
<link rel="stylesheet" type="text/css" href="CSS/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="CSS/bootstrap-dialog.css">
<link rel="stylesheet" type="text/css" href="CSS/Combined.css">
<link rel="stylesheet" type="text/css" href="CSS/notifIt.css">
<link rel="shortcut icon" href="IMAGES/favicon.ico">

<title>Farm/Heard Management</title>

</head>
<body >

	<div class="container ">
		<div class="modal-dialog modal-midle"
			style="width: 500px; margin-top: 220px">
			<div class="modal-content">
				<div class="modal-body  ">
					<form name="LoginForm" id="iLoginForm" action="LoginServlet"
						method="post">
						<div align="center">
							<font
								style="font-style: normal; font-size: 25px; color: #808080;">
								Login</font>
						</div>
						<table class="table" id="HeadTbl">
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											User Name</font> <input type="text" placeholder="User Name"
											name="username" id="iusername"
											class="form-control input-sm LoginFields">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px"
										class="col-md-6">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Password</font> <input type="password" placeholder="Password"
											name="password" id="ipassword"
											class="form-control input-sm LoginFields">
									</div>
								</td>
								<td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 32px" align="center">
										<button type="submit" class="btn btn-success btn-lg SignInBtn" >Log
											In</button>
										<br>
										<br>
									</div>
								</td>
							</tr>
							<tr>
							<td><a href="JSP/farmUserSignUp.jsp">Sign Up </a>  </td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
		<!-- Bank In -->

	</div>
	
	<footer style="margin-top: 135px">
	<p align="center">
		<font style="" size="4" color="black">Farm/Heard Management
			System </font>
	</p>
	<p align="center">
		<font style="" size="2" color="black"> &copy; Itrix Computer
			Services Pvt. Ltd. / www.itrixsystems.com / Email:
			contact@itrixsystems.com / Mobile : +91 830-800-5483 </font>
	</p>

	</footer>
	<script type="text/javascript" src="JS/jquery.min.js"></script>
	<script type="text/javascript" src="JS/bootstrap.min.js"></script>
	<script type="text/javascript" src="JS/bootstrapValidator.js"></script>
	<script type="text/javascript" src="JS/notifIt.js"></script>
	<script type="text/javascript">

$('.SignInBtn').on('click', function() {
	
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
String ErrorMessage=(String)session.getAttribute("LoginErrorMSG");
if(ErrorMessage!=null || session.getAttribute("LoginErrorMSG")!=null){	
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
    session.removeAttribute("LoginErrorMSG");
    
	%>
	<script type="text/javascript">
	});
</script>
</body>
</html>