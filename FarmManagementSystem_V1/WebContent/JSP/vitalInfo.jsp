<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vital Info</title>

<script type="text/javascript">

</script>
</head>
<body>
	 <div class="container " >
		<div class="modal-dialog"  >
			<div class="">
				<div class="modal-body" > 
				<div class="col-lg-9" id="">
					<form name="VitalForm" id="iVitalForm" action="../vitalController" method="post" >
						<div >
							<font
								style="font-style: normal; font-size: 25px; color: #808080;">
								Vital Information</font>
						</div>
						<table  class="table table-striped" style="width: 100%" id="iVitalInfoTbl">
						<tr>
								<td >
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Animal ID:</font>
									</div>
									</td>
									<td >
									 <div class="form-group" style="margin-top: 10px">
											<label id="iAni_ID" class=""></label>
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Tag ID:</font> 
											</div>
									</td>
									<td >
									 <div class="form-group" style="margin-top: 10px">
											<label id="iTag_ID" class=""></label>
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Name:</font> 
											</div>
									</td>
									<td >
									 <div class="form-group" style="margin-top: 10px">
											<label id="iAnimal_Name" class=""></label>
									</div>

								</td>
							</tr>						
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Breed Type:</font> 
											</div>
									</td>
									<td >
									 <div class="form-group" style="margin-top: 10px">
											<label id="iBreed_Type" class=""></label>
									</div>

								</td>
							</tr>
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Gender:</font> 
											</div>
									</td>
									<td >
									 <div class="form-group" style="margin-top: 10px">
											<label id="iGender" class=""></label>
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											 Electronic ID:</font> 
											 </div>
									</td>
									<td >
									 <div class="form-group" style="margin-top: 10px">
											<label id="iElectronicId" class=""></label>
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Certified ID:</font> 
											</div>
									</td>
									<td >
									 <div class="form-group" style="margin-top: 10px">
											<label id="iCertifiedId" class=""></label>
									</div>

								</td>
							</tr>				
							
						</table> 
					</form>
					</div>
					<div class="col-lg-3" id="">
						<div class="bs-component">
								<button data-toggle="modal" data-target="#VitalInfoEdit" id="iVitalInfoEdit" title="Edit Vital Info"
								class="btn btn-success btn-sm" onclick="getVitalInfoOnAnimalIdSelectUpdt();">Edit Vital Info</button>
				
						</div>
					</div>
				 </div>
			</div>
		</div> 
		<!-- Bank In -->
	</div>
	<!-- *******************************Add new map to site modal*************************************  -->
	<div class="modal fade " id="VitalInfoEdit">
		<div class="modal-dialog modal-midle">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" id="resetViewBtn" class="close"
						data-dismiss="modal" onclick="getVitalInfoOnAnimalIdSelect()">×</button>
					<font style="font-size: 20px; ">Edit Vital Information </font>
				</div>
				<div class="modal-body">
				<form id="iVitalInfoUpdateForm" name="VitalInfoUpdateForm">
					<table class="table table-striped"  >
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Animal ID:</font> 
											
											<input type="text" name="Ani_ID_Updt" id="iAni_ID_Updt" align="middle"
													readonly="readonly" class="form-control input-sm">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Tag ID:</font> 
											
											<input type="text" name="Tag_ID_Updt" id="iTag_ID_Updt"
													 class="form-control input-sm">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Name:</font> 
											
											<input type="text" name="Animal_Name_Updt" id="iAnimal_Name_Updt"
													 class="form-control input-sm">
									</div>

								</td>
							</tr>						
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Breed Type:</font> 
																					
											<select class="form-control input-sm" name="Breed_Type_Updt" id="iBreed_Type_Updt" class=" show-tick show-menu-arrow"  required="required">
										    	<option value="B">Boer</option>
										     	<option value="O">Osmanabadi</option>
										      	<option value="S">Sirohi</option>
										     </select>
									</div>

								</td>
							</tr>
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Gender:</font> 										
											<select class="form-control input-sm" name="Gender_Updt" id="iGender_Updt" class=" show-tick show-menu-arrow"  required="required">
										    <option value="F">Female</option>
										    <option value="M">Male</option>
									     </select>
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											 Electronic ID:</font> 
											
											<input type="text" name="ElectronicId_Updt" id="iElectronicId_Updt"
													 class="form-control input-sm">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Certified ID:</font> 
											
											<input type="text" name="CertifiedId_Updt" id="iCertifiedId_Updt"
													 class="form-control input-sm">
									</div>

								</td>
							</tr>				
							<tr style="height: 100px">
								<td colspan="2" align="center"><input type="button" id="saveVitalInfo"
									class="btn btn-success " value="Save"
									onclick="updateVitalInfo();"></td>
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
<script type="text/javascript">
 function getVitalInfoOnAnimalIdSelect(){
	
	 var animalId=document.SelctDropdownAnimalProfileForm.Select_Animal.value;	
	// alert("onChange AnimalID ## "+animalId);
	 var xmlAnimalDetailHttpObj;
		if(window.XMLHttpRequest)
	{
			xmlAnimalDetailHttpObj = new XMLHttpRequest();
	}
	else
	{
		xmlAnimalDetailHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xmlAnimalDetailHttpObj.onreadystatechange=function()
	{
			if(xmlAnimalDetailHttpObj.readyState==4 && xmlAnimalDetailHttpObj.status==200)
		{
				var result=xmlAnimalDetailHttpObj.responseText;
				
				var getAnimaldetails=JSON.parse(result);
			if(getAnimaldetails.JsonAnimalDetailObjList.length>0)
			{
				document.getElementById("iAni_ID").innerHTML=animalId;
				document.getElementById("iTag_ID").innerHTML=getAnimaldetails.JsonAnimalDetailObjList[0].tagId;
				document.getElementById("iAnimal_Name").innerHTML=getAnimaldetails.JsonAnimalDetailObjList[0].animalName;
								
				var breed = getAnimaldetails.JsonAnimalDetailObjList[0].breedType;
				
				if(breed=="B"){
					document.getElementById("iBreed_Type").innerHTML="Boer";	    			
	    		}else if(breed=="O"){
	    			document.getElementById("iBreed_Type").innerHTML="Osmanabadi";
	    		}else if(breed=="S"){
	    			document.getElementById("iBreed_Type").innerHTML="Sirohi";
	    		}
				
				var gender = getAnimaldetails.JsonAnimalDetailObjList[0].gender;
				if(gender=="M"){
	    			document.getElementById("iGender").innerHTML="Male";
	    			
	    		}else if(gender=="F"){
	    			document.getElementById("iGender").innerHTML="Female";
	    		}
				
				document.getElementById("iElectronicId").innerHTML=getAnimaldetails.JsonAnimalDetailObjList[0].electronicId;
				document.getElementById("iCertifiedId").innerHTML=getAnimaldetails.JsonAnimalDetailObjList[0].certifiedId;
			} 
		}
	};
	xmlAnimalDetailHttpObj.open('POST',"../AjaxUtilityController?&req_type=getAnimalDeatail&animal_Id="+animalId,false);
	
	xmlAnimalDetailHttpObj.send(); 
 }
 
 function getVitalInfoOnAnimalIdSelectUpdt(){
		
	 var animalId=document.SelctDropdownAnimalProfileForm.Select_Animal.value;	
	// alert("V Animal ID _Updt## "+animalId);
	 var xmlAnimalDetailHttpObj;
		if(window.XMLHttpRequest)
	{
			xmlAnimalDetailHttpObj = new XMLHttpRequest();
	}
	else
	{
		xmlAnimalDetailHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xmlAnimalDetailHttpObj.onreadystatechange=function()
	{
			if(xmlAnimalDetailHttpObj.readyState==4 && xmlAnimalDetailHttpObj.status==200)
		{
				var result=xmlAnimalDetailHttpObj.responseText;
				
				var getAnimaldetails=JSON.parse(result);
			if(getAnimaldetails.JsonAnimalDetailObjList.length>0)
			{
				$("#iAni_ID_Updt").val(animalId);
				$("#iTag_ID_Updt").val(getAnimaldetails.JsonAnimalDetailObjList[0].tagId);
				$("#iAnimal_Name_Updt").val(getAnimaldetails.JsonAnimalDetailObjList[0].animalName);
			
				var breedType = getAnimaldetails.JsonAnimalDetailObjList[0].breedType;				
				if(breedType=="B"){
	    			document.getElementById("iBreed_Type_Updt").value="B";	    			
	    		}else if(breedType=="O"){
	    			document.getElementById("iBreed_Type_Updt").value="O";
	    		}else if(breedType=="S"){
	    			document.getElementById("iBreed_Type_Updt").value="S";
	    		}				
				
				var gender=getAnimaldetails.JsonAnimalDetailObjList[0].gender;					
	    		if(gender=="M"){
	    			document.getElementById("iGender_Updt").value="M";
	    			
	    		}else if(gender=="F"){
	    			document.getElementById("iGender_Updt").value="F";
	    		}
				
				$("#iElectronicId_Updt").val(getAnimaldetails.JsonAnimalDetailObjList[0].electronicId);
				$("#iCertifiedId_Updt").val(getAnimaldetails.JsonAnimalDetailObjList[0].certifiedId);
				} 
		}
	};
	xmlAnimalDetailHttpObj.open('POST',"../AjaxUtilityController?&req_type=getAnimalDeatail&animal_Id="+animalId,false);
	xmlAnimalDetailHttpObj.send(); 
 }
 
 
 function updateVitalInfo(){
		$("#saveVitalInfo").attr("disabled", true);
			$.ajax({
				url : "../AjaxUtilityController?req_type=updateVitalInfo",
				type : "POST",
				data : $('#iVitalInfoUpdateForm').serialize(),
				success : function(data) {
					$('#VitalInfoEdit').modal('toggle'); 
					$('#VitalInfoEdit').fadeOut();					
					alert(data);
					getVitalInfoOnAnimalIdSelect();
					$("#saveVitalInfo").attr("disabled", false);
				
				},
				error : function() {
					alert('AJAX NOT WORK');
				}
			});
		
		
	}
</script>
</body>
</html>