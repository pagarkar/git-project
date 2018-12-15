<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>FarmInfo</title>
<script type="text/javascript">

</script>
</head>
<body>
	<%@include file="../JSP/farmUserHomeHeader.jsp"%>
	<div class="container" style="margin-top: 5px;">
		<div class="row">
			<div class="well Small-Well">
				<label class="ClsMaintenanceLbl"><font color="sky blue">Farm Information</font> </label>
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
						<form name="FarmInfo" id="iFarmInfo" action="../farmController"
							method="post">
							<div>
								<font
									style="font-style: normal; font-size: 25px; color: #808080;">
									Farm Information</font>
							</div>
							<table class="table table-striped" style="width: 100%"
								id="iFarmInfoTbl">
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Farm Id:</font>
										</div></td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iFarm_Id" class=""></label>
										</div></td>
								</tr>
								
			                     <tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Farm Name:</font>
										</div></td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iFarm_Name" class=""></label>
										</div></td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Animal Type:</font>
										</div></td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iAnimal_Type" class=""></label>
										</div></td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Address:</font>
										</div></td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iAddress" class=""></label>
										</div></td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												contact No:</font>
										</div></td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iContact_No" class=""></label>
										</div></td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												city:</font>
										</div></td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iCity" class=""></label>
										</div></td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												state:</font>
										</div></td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iState" class=""></label>
										</div></td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												country:</font>
										</div></td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<label id="iCountry" class=""></label>
										</div></td>
								</tr>
								
							</table>
						</form>
					</div>
					<div class="col-lg-3" id="">
						<div class="bs-component">
							<button data-toggle="modal" data-target="#FarmInfoEdit"
								id="iFarmInfoEdit" title="Edit Farm Info"
								class="btn btn-success btn-sm"
								onclick="getFarmInfoOnFarmIdSelectUpdt();">Edit Farm
								Info</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- *******************************Add Farm Info modal*************************************  -->
	
	<div class="modal fade " id="FarmInfoEdit">
		<div class="modal-dialog modal-midle">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" id="resetFarmInfoBtn" class="close"
						data-dismiss="modal" onclick="getRefreshFamInfo()">×</button>
					<font style="font-size: 20px;">Edit Farm Information </font>
				</div>
				<div class="modal-body">
					<form id="iFarmInfoUpdateForm" name="FarmInfoUpdateForm">
						<table class="table table-striped">
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Farm ID:</font> <input type="text" name="Farm_Id_Updt"
											id="iFarm_Id_Updt" align="middle"
											class="form-control input-sm">
									</div></td>
							</tr>
							
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Farm Name:</font> <input type="text" name="Farm_Name_Updt"
											id="iFarm_Name_Updt" class="form-control input-sm">
									</div></td>
							</tr>
							
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Animal Type:</font> <input type="text" name="Animal_Type_Updt"
											id="iAnimal_Type_Updt" class="form-control input-sm">
									</div></td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Address:</font> <input type="text" name="Address_Updt"
											id="iAddress_Updt" class="form-control input-sm">


									</div></td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											contact No:</font> <input type="text" name="contact_no_Updt"
											id="iContact_No_Updt" class="form-control input-sm">
									</div></td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											city:</font> <input type="text" name="city_Updt" id="iCity_Updt"
											class="form-control input-sm">
									</div></td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											state:</font> <input type="text" name="state_Updt" id="iState_Updt"
											class="form-control input-sm">
									</div></td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											country:</font> <input type="text" name="country_Updt"
											id="iCountry_Updt" class="form-control input-sm">
									</div></td>
							</tr>
							
							<tr style="height: 100px">
								<td colspan="2" align="center"><input type="button"
									id="saveFarmInfo" class="btn btn-success " value="Save"
									onclick="updateFarmInfo();">
								</td>
								<td></td>
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
	<script type="text/javascript" src="../JS/jquery.js"></script>
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
	
	 var xmlFarmDetailHttpObj;
	 
		if(window.XMLHttpRequest)
	{
			xmlFarmDetailHttpObj = new XMLHttpRequest();
	}
	else
	{
		xmlFarmDetailHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xmlFarmDetailHttpObj.onreadystatechange=function()
	{
			if(xmlFarmDetailHttpObj.readyState==4 && xmlFarmDetailHttpObj.status==200)
		{
				
				var result=xmlFarmDetailHttpObj.responseText;		
				//alert(result);
				var getFarmInfo=JSON.parse(result);
				if(getFarmInfo.Jsonfarmdetailslist.length>0)
		     {
					var farmId = getFarmInfo.Jsonfarmdetailslist[0].farmId;
					var farmName = getFarmInfo.Jsonfarmdetailslist[0].farmName;
					var animalType = getFarmInfo.Jsonfarmdetailslist[0].animalType;
					var address  =getFarmInfo.Jsonfarmdetailslist[0].farmAddress;
					var contactNo = getFarmInfo.Jsonfarmdetailslist[0].contactNo;
					var city = getFarmInfo.Jsonfarmdetailslist[0].city;
					var state = getFarmInfo.Jsonfarmdetailslist[0].state;
					var country  =getFarmInfo.Jsonfarmdetailslist[0].country;
					
					/* if(!address!=null){
						address =" ";
					}if(!city!=null){
						city="";
					}
					if(!state!=null){
						state="";
					}
					if(!country!=null){
						country="";	
					}
					if(!contactNo!=null){
						contactNo="";	
					} */
	                 document.getElementById("iFarm_Id").innerHTML=farmId;
	                 document.getElementById("iFarm_Name").innerHTML=farmName;
	                 document.getElementById("iAnimal_Type").innerHTML=animalType;
	                 document.getElementById("iAddress").innerHTML=address;
	                 document.getElementById("iContact_No").innerHTML=contactNo;
	                 document.getElementById("iCity").innerHTML=city;
	                 document.getElementById("iState").innerHTML=state;
	                 document.getElementById("iCountry").innerHTML=country;
	                 
						
		     } 
				
			
		}
	};
	xmlFarmDetailHttpObj.open('POST',"../AjaxUtilityController?&req_type=getFarmInfo",false);	
	xmlFarmDetailHttpObj.send(); 
	
	});
	
	
function getFarmInfoOnFarmIdSelectUpdt(){

	var xmlFarmInfoHttpObj;
	
	if(window.XMLHttpRequest)
	{
	xmlFarmInfoHttpObj = new XMLHttpRequest();
	}
	else
	{
	xmlFarmInfoHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
	xmlFarmInfoHttpObj.onreadystatechange=function()
	{
	if(xmlFarmInfoHttpObj.readyState==4 && xmlFarmInfoHttpObj.status==200)
	{
		var result=xmlFarmInfoHttpObj.responseText;
		
		var getFarmInfo=JSON.parse(result);
		if(getFarmInfo.Jsonfarmdetailslist.length>0)
	{
			var farmId = getFarmInfo.Jsonfarmdetailslist[0].farmId;
			var farmName = getFarmInfo.Jsonfarmdetailslist[0].farmName;
			var animalType = getFarmInfo.Jsonfarmdetailslist[0].animalType;
			var address  =getFarmInfo.Jsonfarmdetailslist[0].farmAddress;
			
			var city = getFarmInfo.Jsonfarmdetailslist[0].city;
			var state = getFarmInfo.Jsonfarmdetailslist[0].state;
			var country  =getFarmInfo.Jsonfarmdetailslist[0].country;
			var contactNo = getFarmInfo.Jsonfarmdetailslist[0].contactNo;
			
		$("#iFarm_Id_Updt").val(farmId);
		$("#iFarm_Name_Updt").val(farmName);
		$("#iAnimal_Type_Updt").val(animalType);
		$("#iAddress_Updt").val(address);
		$("#iCity_Updt").val(city);
		$("#iState_Updt").val(state);
		$("#iCountry_Updt").val(country);
		$("#iContact_No_Updt").val(contactNo);
		
		
		} 
	}};
	xmlFarmInfoHttpObj.open('POST',"../AjaxUtilityController?&req_type=getFarmInfo",false);
	xmlFarmInfoHttpObj.send();
}



function updateFarmInfo(){
		$("#saveFarmInfo").attr("disabled", true);
			$.ajax({
				url : "../AjaxUtilityController?req_type=updateFarmInfo",
				type : "POST",
				data : $('#iFarmInfoUpdateForm').serialize(),
				success : function(data) {
					$('#FarmInfoEdit').modal('toggle'); 
					$('#FarmInfoEdit').fadeOut();					
					alert(data);
					getFarmInfoOnFarmIdSelectUpdt();
					$("#saveFarmInfo").attr("disabled", false);
				
				},
				error : function() {
					alert('AJAX NOT WORK');
				}
			});
	}




 function getRefreshFamInfo(){
	
	 var xmlFarmDetailHttpObj;
	 
		if(window.XMLHttpRequest)
	{
			xmlFarmDetailHttpObj = new XMLHttpRequest();
	}
	else
	{
		xmlFarmDetailHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xmlFarmDetailHttpObj.onreadystatechange=function()
	{
			if(xmlFarmDetailHttpObj.readyState==4 && xmlFarmDetailHttpObj.status==200)
		{
				
				var result=xmlFarmDetailHttpObj.responseText;		
				//alert(result);
				var getFarmInfo=JSON.parse(result);
				if(getFarmInfo.Jsonfarmdetailslist.length>0)
		     {
					var farmId = getFarmInfo.Jsonfarmdetailslist[0].farmId;
					var farmName = getFarmInfo.Jsonfarmdetailslist[0].farmName;
					var animalType = getFarmInfo.Jsonfarmdetailslist[0].animalType;
					var address  =getFarmInfo.Jsonfarmdetailslist[0].farmAddress;
					var contactNo = getFarmInfo.Jsonfarmdetailslist[0].contactNo;
					var city = getFarmInfo.Jsonfarmdetailslist[0].city;
					var state = getFarmInfo.Jsonfarmdetailslist[0].state;
					var country  =getFarmInfo.Jsonfarmdetailslist[0].country;
					
				
	                 document.getElementById("iFarm_Id").innerHTML=farmId;
	                 document.getElementById("iFarm_Name").innerHTML=farmName;
	                 document.getElementById("iAnimal_Type").innerHTML=animalType;
	                 document.getElementById("iAddress").innerHTML=address;
	                 document.getElementById("iContact_No").innerHTML=contactNo;
	                 document.getElementById("iCity").innerHTML=city;
	                 document.getElementById("iState").innerHTML=state;
	                 document.getElementById("iCountry").innerHTML=country;
	                 
						
		     } 
				
			
		}
	};
	xmlFarmDetailHttpObj.open('POST',"../AjaxUtilityController?&req_type=getFarmInfo",false);	
	xmlFarmDetailHttpObj.send(); 
	}	 

 
 </script>
</body>
</html>


		
	




