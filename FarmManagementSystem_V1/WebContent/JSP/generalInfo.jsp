<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>General Info</title>

</head>
<body onload="">
	<div class="container ">
		<div class="modal-dialog">
			<div class="">
				<div class="modal-body">
					<div class="col-lg-9" id="">

						<form name="GeneralForm" id="iGeneralForm"
							action="../GeneralController" method="post">
							<div>
								<font
									style="font-style: normal; font-size: 25px; color: #808080;">
									General Information</font>
							</div>
							<table class="table table-striped" style="width: 100%"
								id="iGeneralInfoTbl">
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Eye Color</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
										<select class="form-control input-sm" name="EyeColor"
											id="iEyeColor" class=" show-tick show-menu-arrow"
											disabled="disabled">
											<option value="">Select</option>
											<option value="Brown">Brown</option>
											<option value="LightBrown">Light Brown</option>
											<option value="LightSkyBlue">Light Sky Blue</option>
											<option value="MarbledAmber">Marbled Amber</option>
											<option value="MarbledBrown">Marbled Brown</option>
											<option value="AmberYellowGold">Amber/Yellow-Gold</option>
											<option value="Black">Black</option>
											<option value="Other">Other</option>
										</select>
									</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Ear Type</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<select class="form-control input-sm" name="EarType"
											id="iEarType" class=" show-tick show-menu-arrow"
											disabled="disabled">
											<option value="">Select</option>
											<option value="Airplane">Airplane</option>
											<option value="Cookie">Cookie</option>
											<option value="Elf">Elf</option>
											<option value="Erect">Erect</option>
											<option value="Floppy">Floppy</option>
											<option value="Gopher">Gopher</option>
											<option value="Munchkin">Munchkin</option>
											<option value="Nuwby">Nuwby</option>
											<option value="Pendulous">Pendulous</option>
											<option value="Pixie">Pixie</option>
											<option value="Other" >Other</option>
										</select>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Horn Type</font>
										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<select class="form-control input-sm" name="HornType"
											id="iHornType" class=" show-tick show-menu-arrow"
											disabled="disabled">
											<option value="">Select</option>
											<option value="Disbudded">Disbudded</option>
											<option value="Polled">Polled</option>
											<option value="Dehorned">Dehorned</option>
											<option value="Horned">Horned</option>
											<option value="Other" >Other</option>

										</select>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Mouth Type</font>

										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<select class="form-control input-sm" name="MouthType"
											id="iMouthType" class=" show-tick show-menu-arrow"
											disabled="disabled">
											<option value="">Select</option>
											<option value="CleftPalate">Cleft Palate</option>
											<option value="Correct">Correct</option>
											<option value="OvershotJaw">Overshot Jaw</option>
											<option value="UndershotJaw">Undershot Jaw</option>
											<option value="Other">Other</option>

										</select>
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Tattoos/Markings</font>

										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<input type="text" name="Tattoos" id="iTattoos"
											class="form-control input-sm" readonly="readonly">
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Body Color</font>

										</div>
									</td>
									<td>
										<div class="form-group" style="margin-top: 10px">
											
											<input type="text" name="BodyClr" id="iBodyClr"
											class="form-control input-sm" readonly="readonly">
										</div>

									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Date Of Birth</font>

										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group" style="margin-top: 10px">
											<font
												style="font-style: normal; font-size: 15px; color: #808080;">
												Source</font>

										</div>
									</td>
									<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="radio" name="SourceType" id="iSourceType"
											value="borninfarm" onclick="" disabled="disabled"> Born
											in my farm<br> 
										<input type="radio" name="SourceType"
											id="iSourceType" value="purchased"
											onclick="" disabled="disabled"> Purchased<br> 
										<input	type="radio" name="SourceType" id="iSourceType"
											value="leased" onclick="" disabled="disabled"> Leased <br>
										<input type="radio" name="SourceType" id="iSourceType"
											value="boarded" onclick="" disabled="disabled"> Boarded
										<br>
									</div>
									<div id="isourcedetailsDiv" style="display: none">
										
										<div class="form-group">
											<label class="info-title">Source Details<span></span></label>
											<font color="red">*</font>
											<textarea class="form-control" rows="2" cols="5"
												name="SourceDet" id="iSourceDet" placeholder="Source Details" readonly="readonly"></textarea>
										</div>
									</div>
									
									</td>
								</tr>
							</table>
						</form>
					</div>
					<div class="col-lg-3" id="">
						<div class="bs-component">
							<button data-toggle="modal" data-target="#GeneralInfoEdit"
								id="iGeneralInfoEdit" title="Edit General Info"
								class="btn btn-success btn-sm"
								onclick="getGeneralInfoOnAnimalIdSelect_Updt();">Add / Edit</button>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Bank In -->
	</div>
	<!-- *******************************General Info Modal*************************************  -->
	<div class="modal fade " id="GeneralInfoEdit">
		<div class="modal-dialog modal-midle">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" id="resetViewBtn" class="close"
						data-dismiss="modal" onclick="getGeneralInfoOnAnimalIdSelect()">×</button>
					<font style="font-size: 20px;">Edit General Information </font>
				</div>
				<div class="modal-body">
					<form id="iGeneralInfoUpdateForm" name="GeneralInfoUpdateForm">
						<table class="table table-striped">
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Eye Color</font>
									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<select class="form-control input-sm" name="EyeColor_Updt"
											id="iEyeColor_Updt" class=" show-tick show-menu-arrow"
											required="required">
											<option value="" selected="selected">Select</option>
											<option value="Brown">Brown</option>
											<option value="LightBrown">Light Brown</option>
											<option value="LightSkyBlue">Light Sky Blue</option>
											<option value="MarbledAmber">Marbled Amber</option>
											<option value="MarbledBrown">Marbled Brown</option>
											<option value="AmberYellowGold">Amber/Yellow-Gold</option>
											<option value="Black">Black</option>
											<option value="Other" >Other</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Ear Type</font>
									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">

										<select class="form-control input-sm" name="EarType_Updt"
											id="iEarType_Updt" class=" show-tick show-menu-arrow"
											required="required">
											<option value="" selected="selected">Select</option>
											<option value="Airplane">Airplane</option>
											<option value="Cookie">Cookie</option>
											<option value="Elf">Elf</option>
											<option value="Erect">Erect</option>
											<option value="Floppy">Floppy</option>
											<option value="Gopher">Gopher</option>
											<option value="Munchkin">Munchkin</option>
											<option value="Nuwby">Nuwby</option>
											<option value="Pendulous">Pendulous</option>
											<option value="Pixie">Pixie</option>
											<option value="Other" >Other</option>
										</select>
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Horn Type</font>
									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<select class="form-control input-sm" name="HornType_Updt"
											id="iHornType_Updt" class=" show-tick show-menu-arrow"
											required="required">
											<option value="" selected="selected">Select</option>
											<option value="Disbudded">Disbudded</option>
											<option value="Polled">Polled</option>
											<option value="Dehorned">Dehorned</option>
											<option value="Horned">Horned</option>
											<option value="Other" >Other</option>

										</select>
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Mouth Type</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">

										<select class="form-control input-sm" name="MouthType_Updt"
											id="iMouthType_Updt" class=" show-tick show-menu-arrow"
											required="required">
											<option value="" selected="selected">Select</option>
											<option value="CleftPalate">Cleft Palate</option>
											<option value="Correct">Correct</option>
											<option value="OvershotJaw">Overshot Jaw</option>
											<option value="UndershotJaw">Undershot Jaw</option>
											<option value="Other" >Other</option>

										</select>
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Tattoos/Markings</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="text" name="Tattoos_Updt" id="iTattoos_Updt"
											class="form-control input-sm">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Body Skin Color</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="text" name="BodyClr_Updt" id="iBodyClr_Updt"
											class="form-control input-sm">
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Source</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="radio" name="SourceType_Updt" id="iSourceType_Updt"
											value="borninfarm" onclick="toggleTables('1')"> Born
											in my farm<br> 
										<input type="radio" name="SourceType_Updt"
											id="iSourceType_Updt" value="purchased"
											onclick="toggleTables('2')"> Purchased<br> 
										<input	type="radio" name="SourceType_Updt" id="iSourceType_Updt"
											value="leased" onclick="toggleTables('3')"> Leased <br>
										<input type="radio" name="SourceType_Updt" id="iSourceType_Updt"
											value="boarded" onclick="toggleTables('4')"> Boarded
										<br>
									</div>
									<div id="iborninfarmDiv" style="display: none">
										<div class="form-group">
											<label class="info-title" for="Date">Date of Birth:-<span></span></label>
											<input type="text" name="DobDate" id="iDobDate"
												placeholder="Date" readonly maxlength="11"
												class="input-sm form-control"
												style="background-color: #FFFFFF;"> <span
												class="input-group-btn">
												<button type="button" class="btn btn-sm btn-danger"
													title="Clear Date" id="iDobDate"
													onclick="DateFunctionDT(this.value)">X</button>
											</span>
										</div>
										<div class="form-group">
											<label class="info-title">Birth Details<span></span></label>
											<font color="red">*</font>
											<textarea class="form-control" rows="2" cols="5"
												name="birthDet" id="ibirthDet" placeholder="Birth Details"></textarea>
										</div>
									</div>
									<div id="ipurchasedDiv" style="display: none">
										<div class="form-group">
											<label class="info-title">Purchase Details<span></span></label>
											<font color="red">*</font>
											<textarea class="form-control" rows="2" cols="5"
												name="purchaseDet" id="ipurchaseDet"
												placeholder="Purchase Details"></textarea>

										</div>
									</div>
									<div id="ileasedDiv" style="display: none">
										<div class="form-group">
											<label class="info-title">Leased Details<span></span></label>
											<font color="red">*</font>
											<textarea class="form-control" rows="2" cols="5"
												name="leasedDet" id="ileasedDet"
												placeholder="Leased Details"></textarea>
										</div>
									</div>
									<div id="iboardingDiv" style="display: none">
										<div class="form-group">
											<label class="info-title">Boarding Details<span></span></label>
											<font color="red">*</font>
											<textarea class="form-control" rows="2" cols="5"
												name="boardingDet" id="iboardingDet"
												placeholder="Boarding Details"></textarea>

										</div>
									</div>
									<!-- <div id="isourcedetailsDiv_Updt" >
										<div class="form-group">
											<label class="info-title">Source Details<span></span></label>
											<font color="red">*</font>
											<textarea class="form-control" rows="2" cols="5"
												name="SourceDet_Updt" id="iSourceDet_Updt" placeholder="Source Details"></textarea>
										</div>
										</div> -->
								</td>
							</tr>
						
							<tr style="height: 100px">
								<td colspan="2" align="center"><input type="button"
									id="saveGeneralBtn" class="btn btn-success " value="Save"
									onclick="updateOrAddGeneralInfo();"></td>
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
	<!-- modal fade closed -->
	<script type="text/javascript" src="../JS/jquery.min.js"></script>
	<script type="text/javascript" src="../JS/jquery.dataTables.js"></script>
	<script type="text/javascript" src="../JS/bootstrap-datepicker.js"></script>

	<script type="text/javascript">
$('#iDobDate').datepicker({
    format: "dd-M-yyyy",
    startDate: "01-Jan-1920",
    endDate: "01-Jan-2019",
    todayBtn: "linked",
    autoclose: true,
    todayHighlight: true
    });
$("#iDobDate").datepicker().datepicker("setDate", new Date());
function DateFunctionDT()
{
	$('#iDobDate').val("");
}

function getGeneralInfoOnAnimalIdSelect(){
	
	 var animalId=document.SelctDropdownAnimalProfileForm.Select_Animal.value;	
	
	 var xamlGeneralInfoHttpObj;
		if(window.XMLHttpRequest)
	{
			xamlGeneralInfoHttpObj = new XMLHttpRequest();
	}
	else
	{
		xamlGeneralInfoHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xamlGeneralInfoHttpObj.onreadystatechange=function()
	{
			if(xamlGeneralInfoHttpObj.readyState==4 && xamlGeneralInfoHttpObj.status==200)
		{
				var result=xamlGeneralInfoHttpObj.responseText;
				var getGeneralInfo=JSON.parse(result);
			if(getGeneralInfo.JsonGeneralInfoObjList.length>0)
			{
				//$("#iAni_ID_Updt").val(animalId);
						
				var eyeColor = getGeneralInfo.JsonGeneralInfoObjList[0].eyeColor;	
				
				if(eyeColor==""){
	    			document.getElementById("iEyeColor").value="";	    			
	    		}else if(eyeColor=="Other"){
	    			document.getElementById("iEyeColor").value="Other";	    			
	    		}else if(eyeColor=="Brown"){
	    			document.getElementById("iEyeColor").value="Brown";
	    		}else if(eyeColor=="LightBrown"){
	    			document.getElementById("iEyeColor").value="LightBrown";
	    		}else if(eyeColor=="LightSkyBlue"){
	    			document.getElementById("iEyeColor").value="LightSkyBlue";
	    		}else if(eyeColor=="MarbledAmber"){
	    			document.getElementById("iEyeColor").value="MarbledAmber";
	    		}else if(eyeColor=="MarbledBrown"){
	    			document.getElementById("iEyeColor").value="MarbledBrown";
	    		}else if(eyeColor=="AmberYellowGold"){
	    			document.getElementById("iEyeColor").value="AmberYellowGold";
	    		}else if(eyeColor=="Black"){
	    			document.getElementById("iEyeColor").value="Black";
	    		}
				
			var earType = getGeneralInfo.JsonGeneralInfoObjList[0].earType;	
			
				if(earType==""){
	    			document.getElementById("iEarType").value="";	    			
	    		}else if(earType=="Other"){
		    			document.getElementById("iEarType").value="Other";	    			
	    		}else if(earType=="Airplane"){
	    			document.getElementById("iEarType").value="Airplane";
	    		}else if(earType=="Cookie"){
	    			document.getElementById("iEarType").value="Cookie";
	    		}else if(earType=="Elf"){
	    			document.getElementById("iEarType").value="Elf";
	    		}else if(earType=="Erect"){
	    			document.getElementById("iEarType").value="Erect";
	    		}else if(earType=="Floppy"){
	    			document.getElementById("iEarType").value="Floppy";
	    		}else if(earType=="Gopher"){
	    			document.getElementById("iEarType").value="Gopher";
	    		}else if(earType=="Munchkin"){
	    			document.getElementById("iEarType").value="Munchkin";
	    		}else if(earType=="Nuwby"){
	    			document.getElementById("iEarType").value="Nuwby";
	    		}else if(earType=="Pendulous"){
	    			document.getElementById("iEarType").value="Pendulous";
	    		}else if(earType=="Pixie"){
	    			document.getElementById("iEyeColor").value="Pixie";
	    		}
									
				var hornType = getGeneralInfo.JsonGeneralInfoObjList[0].hornType;	
				
				if(hornType==""){
	    			document.getElementById("iHornType").value="";	    			
	    		}else if(hornType=="Other"){
	    			document.getElementById("iHornType").value="Other";	    			
	    		}else if(hornType=="Disbudded"){
	    			document.getElementById("iHornType").value="Disbudded";
	    		}else if(hornType=="Dehorned"){
	    			document.getElementById("iHornType").value="Dehorned";
	    		}else if(hornType=="Horned"){
	    			document.getElementById("iHornType").value="Horned";
	    		}else if(hornType=="Polled"){
	    			document.getElementById("iHornType").value="Polled";
	    		}
				
				
			var mouthType = getGeneralInfo.JsonGeneralInfoObjList[0].mouthType;
				if(mouthType==""){
	    			document.getElementById("iMouthType").value="";	    			
	    		}else if(mouthType=="Other"){
	    			document.getElementById("iMouthType").value="Other";	    			
	    		}else if(mouthType=="CleftPalate"){
	    			document.getElementById("iMouthType").value="CleftPalate";
	    		}else if(mouthType=="OvershotJaw"){
	    			document.getElementById("iMouthType").value="OvershotJaw";
	    		}else if(mouthType=="UndershotJaw"){
	    			document.getElementById("iMouthType").value="UndershotJaw";
	    		}
				
				$("#iTattoos").val(getGeneralInfo.JsonGeneralInfoObjList[0].tattoos);	
				$("#iBodyClr").val(getGeneralInfo.JsonGeneralInfoObjList[0].bodyColor);
				
				var sourceTypeVal = getGeneralInfo.JsonGeneralInfoObjList[0].sourceType;				
				if(sourceTypeVal=="borninfarm"){
					$("input[name=SourceType][value="+sourceTypeVal+"]").prop('checked', true);
				}else if(sourceTypeVal=="purchased"){							
					$("input[name=SourceType][value="+sourceTypeVal+"]").prop('checked', true);					
				}else if(sourceTypeVal=="leased"){
					$("input[name=SourceType][value="+sourceTypeVal+"]").prop('checked', true);
				}else if(sourceTypeVal=="boarded"){
					$("input[name=SourceType][value="+sourceTypeVal+"]").prop('checked', true);
				}
				 document.getElementById('isourcedetailsDiv').style.display = "block";
				$("#iSourceDet").val(getGeneralInfo.JsonGeneralInfoObjList[0].sourceDetails);
				
				}else{
					document.getElementById("iEyeColor").value="";
					document.getElementById("iEarType").value="";
					document.getElementById("iHornType").value="";
					document.getElementById("iMouthType").value="";	    
					$("#iTattoos").val("");	
					$("#iBodyClr").val("");
					$("input[name=SourceType]").prop('checked', false);
					document.getElementById('isourcedetailsDiv').style.display = "none";
					$("#iSourceDet").val("");
				}
			
		}
	};
	xamlGeneralInfoHttpObj.open('POST',"../AjaxUtilityController?&req_type=getGeneralInfo&animal_Id="+animalId,false);
	xamlGeneralInfoHttpObj.send(); 
}

function getGeneralInfoOnAnimalIdSelect_Updt(){	
	 var animalId=document.SelctDropdownAnimalProfileForm.Select_Animal.value;		
	 var xamlGeneralInfoHttpObj;
		if(window.XMLHttpRequest)
	{
			xamlGeneralInfoHttpObj = new XMLHttpRequest();
	}
	else
	{
		xamlGeneralInfoHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xamlGeneralInfoHttpObj.onreadystatechange=function()
	{
			if(xamlGeneralInfoHttpObj.readyState==4 && xamlGeneralInfoHttpObj.status==200)
		{
				var result=xamlGeneralInfoHttpObj.responseText;
				//alert(result);
				var getGeneralInfo=JSON.parse(result);
			if(getGeneralInfo.JsonGeneralInfoObjList.length>0)
			{
				//$("#iAni_ID_Updt").val(animalId);
						
			var eyeColor = getGeneralInfo.JsonGeneralInfoObjList[0].eyeColor;					
				if(eyeColor=="Other"){
	    			document.getElementById("iEyeColor_Updt").value="Other";	    			
	    		}else if(eyeColor=="Brown"){
	    			document.getElementById("iEyeColor_Updt").value="Brown";
	    		}else if(eyeColor=="LightBrown"){
	    			document.getElementById("iEyeColor_Updt").value="LightBrown";
	    		}else if(eyeColor=="LightSkyBlue"){
	    			document.getElementById("iEyeColor_Updt").value="LightSkyBlue";
	    		}else if(eyeColor=="MarbledAmber"){
	    			document.getElementById("iEyeColor_Updt").value="MarbledAmber";
	    		}else if(eyeColor=="MarbledBrown"){
	    			document.getElementById("iEyeColor_Updt").value="MarbledBrown";
	    		}else if(eyeColor=="AmberYellowGold"){
	    			document.getElementById("iEyeColor_Updt").value="AmberYellowGold";
	    		}else if(eyeColor=="Black"){
	    			document.getElementById("iEyeColor_Updt").value="Black";
	    		}
				
			var earType = getGeneralInfo.JsonGeneralInfoObjList[0].earType;				
				if(earType=="Other"){
	    			document.getElementById("iEarType_Updt").value="Other";	    			
	    		}else if(earType=="Airplane"){
	    			document.getElementById("iEarType_Updt").value="Airplane";
	    		}else if(earType=="Cookie"){
	    			document.getElementById("iEarType_Updt").value="Cookie";
	    		}else if(earType=="Elf"){
	    			document.getElementById("iEarType_Updt").value="Elf";
	    		}else if(earType=="Erect"){
	    			document.getElementById("iEarType_Updt").value="Erect";
	    		}else if(earType=="Floppy"){
	    			document.getElementById("iEarType_Updt").value="Floppy";
	    		}else if(earType=="Gopher"){
	    			document.getElementById("iEarType_Updt").value="Gopher";
	    		}else if(earType=="Munchkin"){
	    			document.getElementById("iEarType_Updt").value="Munchkin";
	    		}else if(earType=="Nuwby"){
	    			document.getElementById("iEarType_Updt").value="Nuwby";
	    		}else if(earType=="Pendulous"){
	    			document.getElementById("iEarType_Updt").value="Pendulous";
	    		}else if(earType=="Pixie"){
	    			document.getElementById("iEyeColor_Updt").value="Pixie";
	    		}
									
			var hornType = getGeneralInfo.JsonGeneralInfoObjList[0].hornType;				
				if(hornType=="Other"){
	    			document.getElementById("iHornType_Updt").value="Other";	    			
	    		}else if(hornType=="Disbudded"){
	    			document.getElementById("iHornType_Updt").value="Disbudded";
	    		}else if(hornType=="Dehorned"){
	    			document.getElementById("iHornType_Updt").value="Dehorned";
	    		}else if(hornType=="Horned"){
	    			document.getElementById("iHornType_Updt").value="Horned";
	    		}else if(hornType=="Polled"){
	    			document.getElementById("iHornType_Updt").value="Polled";
	    		}
				
				
			var mouthType = getGeneralInfo.JsonGeneralInfoObjList[0].mouthType;
				if(mouthType=="Other"){
	    			document.getElementById("iMouthType_Updt").value="Other";	    			
	    		}else if(mouthType=="CleftPalate"){
	    			document.getElementById("iMouthType_Updt").value="CleftPalate";
	    		}else if(mouthType=="OvershotJaw"){
	    			document.getElementById("iMouthType_Updt").value="OvershotJaw";
	    		}else if(mouthType=="UndershotJaw"){
	    			document.getElementById("iMouthType_Updt").value="UndershotJaw";
	    		}
				
				$("#iTattoos_Updt").val(getGeneralInfo.JsonGeneralInfoObjList[0].tattoos);	
				$("#iBodyClr_Updt").val(getGeneralInfo.JsonGeneralInfoObjList[0].bodyColor);
			//	alert("body clr "+getGeneralInfo.JsonGeneralInfoObjList[0].bodyColor);
				var sourceTypeVal = getGeneralInfo.JsonGeneralInfoObjList[0].sourceType;				
				if(sourceTypeVal=="borninfarm"){
					$("input[name=SourceType_Updt][value="+sourceTypeVal+"]").prop('checked', true);
					//document.getElementById('iborninfarmDiv').style.display = "block";
					toggleTables('1');
					$("#ibirthDet").val(getGeneralInfo.JsonGeneralInfoObjList[0].sourceDetails);
				}else if(sourceTypeVal=="purchased"){							
					$("input[name=SourceType_Updt][value="+sourceTypeVal+"]").prop('checked', true);
					// document.getElementById('ipurchasedDiv').style.display = "block";
						toggleTables('2');
					$("#ipurchaseDet").val(getGeneralInfo.JsonGeneralInfoObjList[0].sourceDetails);
				}else if(sourceTypeVal=="leased"){
					$("input[name=SourceType_Updt][value="+sourceTypeVal+"]").prop('checked', true);
					// document.getElementById('ileasedDiv').style.display = "block";	
						toggleTables('3');
					$("#ileasedDet").val(getGeneralInfo.JsonGeneralInfoObjList[0].sourceDetails);
				}else if(sourceTypeVal=="boarded"){
					$("input[name=SourceType_Updt][value="+sourceTypeVal+"]").prop('checked', true);
					// document.getElementById('iboardingDiv').style.display = "block";
						toggleTables('4');
					$("#iboardingDet").val(getGeneralInfo.JsonGeneralInfoObjList[0].sourceDetails);
				}
				
				
				}else{
					document.getElementById("iEyeColor_Updt").value="";
					document.getElementById("iEarType_Updt").value="";
					document.getElementById("iHornType_Updt").value="";
					document.getElementById("iMouthType_Updt").value="";	    
					$("#iTattoos_Updt").val("");	
					$("#iBodyClr_Updt").val("");
					$("input[name=SourceType_Updt]").prop('checked', false);
					 document.getElementById('iborninfarmDiv').style.display = "none";
				        document.getElementById('ipurchasedDiv').style.display = "none";
				        document.getElementById('ileasedDiv').style.display = "none";		   
				        document.getElementById('iboardingDiv').style.display = "none";	
					//document.getElementById('isourcedetailsDiv').style.display = "none";
					//$("#iSourceDet_Updt").val("");
				} 
		}
	};
	xamlGeneralInfoHttpObj.open('POST',"../AjaxUtilityController?&req_type=getGeneralInfo&animal_Id="+animalId,false);
	xamlGeneralInfoHttpObj.send(); 
}
function updateOrAddGeneralInfo(){
	var animalId=document.SelctDropdownAnimalProfileForm.Select_Animal.value;	
	
	$("#saveGeneralBtn").attr("disabled", true);
	$.ajax({
		url : "../AjaxUtilityController?req_type=updateGeneralInfo&animalId="+animalId,
		type : "POST",
		data : $('#iGeneralInfoUpdateForm').serialize(),
		success : function(data) {
			$('#GeneralInfoEdit').modal('toggle'); 
			$('#GeneralInfoEdit').fadeOut();
			
			alert(data);
			getGeneralInfoOnAnimalIdSelect();
			$("#saveGeneralBtn").attr("disabled", false);
		
		},
		error : function() {
			alert('AJAX NOT WORK');
		}
	});

}
</script>
	<script type="text/javascript">
		function toggleTables(which){
			
			//  document.getElementById('isourcedetailsDiv_Updt').style.display = "none";
			if(which == "1") {
			        document.getElementById('iborninfarmDiv').style.display = "block";
			        document.getElementById('ipurchasedDiv').style.display = "none";
			        document.getElementById('ileasedDiv').style.display = "none";		   
			        document.getElementById('iboardingDiv').style.display = "none";		   
		    }
			
			if(which == "2") {
				 	document.getElementById('iborninfarmDiv').style.display = "none";
			        document.getElementById('ipurchasedDiv').style.display = "block";
			        document.getElementById('ileasedDiv').style.display = "none";		   
			        document.getElementById('iboardingDiv').style.display = "none";
		    }
			if(which == "3") {
				 	document.getElementById('iborninfarmDiv').style.display = "none";
			        document.getElementById('ipurchasedDiv').style.display = "none";
			        document.getElementById('ileasedDiv').style.display = "block";		   
			        document.getElementById('iboardingDiv').style.display = "none";
		    }
			if(which == "4") {
				 	document.getElementById('iborninfarmDiv').style.display = "none";
			        document.getElementById('ipurchasedDiv').style.display = "none";
			        document.getElementById('ileasedDiv').style.display = "none";		   
			        document.getElementById('iboardingDiv').style.display = "block";
		    }
		}
</script>
</body>
</html>