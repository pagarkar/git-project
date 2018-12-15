<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css"
	href="../CSS/metro/crimson/jtable.css" />
<link rel="stylesheet" type="text/css"
	href="../CSS/jquery-ui-1.10.3.custom.css" />
<link rel="stylesheet" type="text/css"
	href="../CSS/validationEngine.jquery.css" />
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="../CSS/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="../CSS/bootstrap-dialog.css">
<link rel="stylesheet" type="text/css"
	href="../CSS/bootstrap-select.css">
<link rel="stylesheet" type="text/css" href="../CSS/Combined.css">
<link rel="stylesheet" type="text/css" href="../CSS/notifIt.css">

<title>User Info</title>
<%

%>
<script type="text/javascript">

</script>
</head>
<body>
	<%@include file="../JSP/farmUserHomeHeader.jsp"%>

	<div class="container" style="margin-top: 5px;">
		<div class="row">
			<div class="well Small-Well">
				<label class="ClsMaintenanceLbl"><font color="sky blue">User
						Account Information</font> </label>
			</div>
			<div class="col-lg-12">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<ul class="nav navbar-nav">
							<li id="ifarmUserHomeTab"><a href="../JSP/farmUserHome.jsp">Home</a></li>
							<li id="iAdminTab" class="dropdown"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown">Setting<b
									class="caret"></b></a>
								<ul class="dropdown-menu ClsDropdown">
									<li id="iAddAnimalTab"><a href="../JSP/addAnimalMast.jsp">Add
											Animal</a></li>
									<li id="iViewAnimalTab"><a
										href="../JSP/viewAnimalMast.jsp">View Animal</a></li>
								</ul></li>
								<li class="" id="iAnimalProfileTab" ><a href="../JSP/animalProfile.jsp">Animal Profile</a></li> 
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>


	<div class="container ">
		<div class="modal-dialog">
			<div class="">
				<div class="modal-body">
					<div class="col-lg-9" id="">
						<form name="Edit Profile" id="iEditProfile"
							action="../UserUpdtController" method="post">
							<div>
								<font
									style="font-style: normal; font-size: 25px; color: #808080;">
									User Information</font>
							</div>
							<table class="table table-striped" style="width: 100%"
								id="iUserInfoTbl">
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Name:</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iName" class=""></label>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Mobile:</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iMobile" class=""></label>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Email Id:</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iEmail_Id" class=""></label>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Address:</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iAddress" class=""></label>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												City:</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iCity" class=""></label>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												State:</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iState" class=""></label>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Country:</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iCountry" class=""></label>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												UserName:</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iUname" class=""></label>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												 Password:</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iPassword" class=""></label>
										</div>

									</td>
								</tr>

							</table>
						</form>
					</div>
					<div class="col-lg-3" id="">
						<div class="bs-component">
							<button data-toggle="modal" data-target="#UserInfoEdit"
								id="iUserInfoEdit" title="Edit Profile"
								class="btn btn-success btn-sm"
								onclick="getUserInfoOnUserIdSelectUpdt();">Edit Profile</button>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Bank In -->
	</div>
	<!-- *******************************Add new map to site modal*************************************  -->
	<div class="modal fade " id="UserInfoEdit">
		<div class="modal-dialog modal-midle">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" id="resetViewBtn" class="close"
						data-dismiss="modal" onclick="getUserInfoOnUserIdSelect()">×</button>
					<font style="font-size: 20px; ">Edit User Information </font>
				</div>
				<div class="modal-body">
				<form id="iUserInfoUpdateForm" name="UserInfoUpdateForm">
					<table class="table table-striped"  >
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Name:</font> 
											
											<input type="text" name="Name_Updt" id="iName_Updt" align="middle"
												 class="form-control input-sm">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Mobile No:</font> 
											
											<input type="text" name="Mobile_Updt" id="iMobile_Updt"
													 class="form-control input-sm">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Email Id:</font> 
											
											<input type="text" name="Email_Id_Updt" id="iEmail_Id_Updt"
													 class="form-control input-sm">
									</div>

								</td>
							</tr>						
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Address:</font> 
											<input type="text" name="Address_Updt" id="iAddress_Updt"
													 class="form-control input-sm">
									
																					
									</div>

								</td>
							</tr>
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											City:</font> 	
                                              <input type="text" name="City_Updt" id="iCity_Updt"
													 class="form-control input-sm">
																	

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											 State:</font> 
											
											<input type="text" name="State_Updt" id="iState_Updt"
													 class="form-control input-sm">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Country:</font> 
											
											<input type="text" name="Country_Updt" id="iCountry_Updt"
													 class="form-control input-sm">
									</div>

								</td>
							</tr>	
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Username:</font> 
											
											<input type="text" name="Uname_Updt" id="iUname_Updt"
													 class="form-control input-sm">
									</div>

								</td>
							</tr>				
							
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Change Password:</font> 
											
											<input type="text" name="Password_Updt" id="iPassword_Updt"
													 class="form-control input-sm">
									</div>

								</td>
							</tr>				
										
							<tr style="height: 100px">
								<td colspan="2" align="center"><input type="button" id="save"
									class="btn btn-success " value="Save"
									onclick="updateUserInfo();"></td>
									<td>
									
									</td>
							</tr>
						</table>
					</form>
				</div>
				<!-- modal-body closed -->
			</div>
			<!-- modal-content closed -->
		</div>
		<!-- modal-dialog closed  -->
	</div>
	<!-- modal fade closed -->

	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="../JS/jquery.min.js"></script>
	<script type="text/javascript" src="../JS/jquery.validate.js"></script>
	<script type="text/javascript" src="../JS/bootstrap-select.js"></script>
	<script type="text/javascript" src="../JS/bootstrap.min.js"></script>
	<script type="text/javascript" src="../JS/bootstrapValidator.js"></script>
	<script type="text/javascript" src="../JS/bootstrap-dialog.js"></script>
	<script type="text/javascript" src="../JS/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="../JS/dataTables.bootstrap.js"></script>
	<script type="text/javascript" src="../JS/notifIt.js"></script>
	<script type="text/javascript">

$(function(){
	
	 var xmlUserInfoHttpObj;
		if(window.XMLHttpRequest)
	{
			xmlUserInfoHttpObj = new XMLHttpRequest();
	}
	else
	{
		xmlUserInfoHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xmlUserInfoHttpObj.onreadystatechange=function()
	{
			if(xmlUserInfoHttpObj.readyState==4 && xmlUserInfoHttpObj.status==200)
		{
				var result=xmlUserInfoHttpObj.responseText;
				var getUserInfo=JSON.parse(result);
				if(getUserInfo.JsonUserInfoObjList.length>0)
				{
					document.getElementById("iName").innerHTML=getUserInfo.JsonUserInfoObjList[0].name;
					document.getElementById("iMobile").innerHTML=getUserInfo.JsonUserInfoObjList[0].mobno;
					document.getElementById("iEmail_Id").innerHTML=getUserInfo.JsonUserInfoObjList[0].emailId;
					document.getElementById("iAddress").innerHTML=getUserInfo.JsonUserInfoObjList[0].address;
					document.getElementById("iCity").innerHTML=getUserInfo.JsonUserInfoObjList[0].city;
					document.getElementById("iState").innerHTML=getUserInfo.JsonUserInfoObjList[0].state;
					document.getElementById("iCountry").innerHTML=getUserInfo.JsonUserInfoObjList[0].country;

					document.getElementById("iUname").innerHTML=getUserInfo.JsonUserInfoObjList[0].userName;
					document.getElementById("iPassword").innerHTML=getUserInfo.JsonUserInfoObjList[0].password;

				}
		}
	};
	xmlUserInfoHttpObj.open('POST',"../AjaxUtilityController?&req_type=getUserInfo",false);	
	xmlUserInfoHttpObj.send(); 
	
});

$(function(){
	
	 var xmlUserInfoHttpObj;
		if(window.XMLHttpRequest)
	{
			xmlUserInfoHttpObj = new XMLHttpRequest();
	}
	else
	{
		xmlUserInfoHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xmlUserInfoHttpObj.onreadystatechange=function()
	{
			if(xmlUserInfoHttpObj.readyState==4 && xmlUserInfoHttpObj.status==200)
		{
				var result=xmlUserInfoHttpObj.responseText;
				var getUserInfo=JSON.parse(result);
				if(getUserInfo.JsonUserInfoObjList.length>0)
				{
					$("#iName_Updt").val(getUserInfo.JsonUserInfoObjList[0].name);
					$("#iMobile_Updt").val(getUserInfo.JsonUserInfoObjList[0].mobno);
					$("#iEmail_Id_Updt").val(getUserInfo.JsonUserInfoObjList[0].emailId);
					$("#iAddress_Updt").val(getUserInfo.JsonUserInfoObjList[0].address);
					$("#iCity_Updt").val(getUserInfo.JsonUserInfoObjList[0].city);
					$("#iState_Updt").val(getUserInfo.JsonUserInfoObjList[0].state);
					$("#iCountry_Updt").val(getUserInfo.JsonUserInfoObjList[0].country);
					$("#iUname_Updt").val(getUserInfo.JsonUserInfoObjList[0].userName);
					$("#iPassword_Updt").val(getUserInfo.JsonUserInfoObjList[0].password);

				}
		}
	};
	
		xmlUserInfoHttpObj.open('POST',"../AjaxUtilityController?&req_type=getUserInfo",false);	
		xmlUserInfoHttpObj.send(); 
});


function updateUserInfo(){
	$("#save").attr("disabled", true);
		$.ajax({
			url : "../AjaxUtilityController?req_type=updateUserInfo",
			type : "POST",
			data : $('#iUserInfoUpdateForm').serialize(),
			success : function(data) {
				$('#UserInfoEdit').modal('toggle'); 
				$('#UserInfoEdit').fadeOut();
				
				alert(data);
				getUserInfoOnUserIdSelect();
				$("#save").attr("disabled", false);
			
			},
			error : function() {
				alert('AJAX NOT WORK');
			}
		});
	
	
}

function getUserInfoOnUserIdSelect(){
	
	 var xmlUserInfoHttpObj;
		if(window.XMLHttpRequest)
	{
			xmlUserInfoHttpObj = new XMLHttpRequest();
	}
	else
	{
		xmlUserInfoHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xmlUserInfoHttpObj.onreadystatechange=function()
	{
			if(xmlUserInfoHttpObj.readyState==4 && xmlUserInfoHttpObj.status==200)
		{
				var result=xmlUserInfoHttpObj.responseText;
				var getUserInfo=JSON.parse(result);
				if(getUserInfo.JsonUserInfoObjList.length>0)
				{
					document.getElementById("iName").innerHTML=getUserInfo.JsonUserInfoObjList[0].name;
					document.getElementById("iMobile").innerHTML=getUserInfo.JsonUserInfoObjList[0].mobno;
					document.getElementById("iEmail_Id").innerHTML=getUserInfo.JsonUserInfoObjList[0].emailId;
					document.getElementById("iAddress").innerHTML=getUserInfo.JsonUserInfoObjList[0].address;
					document.getElementById("iCity").innerHTML=getUserInfo.JsonUserInfoObjList[0].city;
					document.getElementById("iState").innerHTML=getUserInfo.JsonUserInfoObjList[0].state;
					document.getElementById("iCountry").innerHTML=getUserInfo.JsonUserInfoObjList[0].country;

					document.getElementById("iUname").innerHTML=getUserInfo.JsonUserInfoObjList[0].userName;
					document.getElementById("iPassword").innerHTML=getUserInfo.JsonUserInfoObjList[0].password;

				}
		}
	};
	xmlUserInfoHttpObj.open('POST',"../AjaxUtilityController?&req_type=getUserInfo",false);	
	xmlUserInfoHttpObj.send(); 
	
};

</script>
</body>
</html>