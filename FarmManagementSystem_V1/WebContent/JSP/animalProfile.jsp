<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
 <link rel="stylesheet" type="text/css" href="../CSS/metro/crimson/jtable.css"  />
<link rel="stylesheet" type="text/css" href="../CSS/jquery-ui-1.10.3.custom.css"  />
<link rel="stylesheet" type="text/css" href="../CSS/validationEngine.jquery.css"  />
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../CSS/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap-dialog.css">
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap-select.css">
<link rel="stylesheet" type="text/css" href="../CSS/Combined.css">
<link rel="stylesheet" type="text/css" href="../CSS/notifIt.css"> 

<title>Animal Profile</title>  

</head>
<body >
<%@include file="../JSP/farmUserHomeHeader.jsp" %>
 <div class="container" >
 	<div class="row"> 			
 		<div class="well Small-Well" style="background-color: gray;"><label class="ClsMaintenanceLbl"><font color="sky blue">Animal Profile </font></label></div>
		 <div class="col-md-12"> 			  
       			<nav class="navbar navbar-default">
  					<div class="container-fluid">    
    					<ul class="nav navbar-nav">
      					<li id="ifarmUserHomeTab" ><a href="../JSP/farmUserHome.jsp">Home</a></li>
      					<li  id="iAdminTab" class="dropdown">
		          			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Setting<b class="caret"></b></a>
		          			<ul class="dropdown-menu ClsDropdown">
		          			<li  id="iAddAnimalTab"><a href="../JSP/addAnimalMast.jsp">Add Animal</a></li>                   								            								           								            
		          		<li  id="iViewAnimalTab"><a href="../JSP/viewAnimalMast.jsp">View Animal</a></li>  
		          		</ul>
						</li>
						<li class="active" id="iAnimalProfileTab" ><a href="../JSP/animalProfile.jsp">Animal Profile</a></li>      
    					</ul>
					  </div>
				</nav>     
  
    	 <form name="SelctDropdownAnimalProfileForm">
	        <table class="table " id="iUserHomeSearchTbl" style="background-color:#E5E8E8;">			    
	        	<tbody>		   		
			        <tr>   	
		    	        <td width="24%">
					        <div class="form-group">
					         <label class="FieldLabel">Select Animal Tag ID-Name</label>						    
						      <select name="Select_Animal" class="form-control input-sm"  id="iSelect_Animal" onchange="getVitalInfoOnAnimalIdSelect(); getGeneralInfoOnAnimalIdSelect();getWeightInfoOnAnimalIdSelect();" class="selectPickerAnimal show-tick show-menu-arrow" data-live-search="true" style="text-transform:uppercase" required="required">
							 </select>						     
					       </div>
				       </td>	
		    	    
				 </tr>
		    </tbody>
	      </table> 	
	   </form>
		 <!-- ********************************Selection Animal******************************** -->
	<div id="SelectionSite" >
		<!--  <div class="col-lg-3" id="iDivUserTblContent">
			<table class="table table-striped">
	 			<tr>
	  				<td><font style="font-size: 13px">Tag ID</font></td>
					<td><label id="iTag_ID" class="UserTblRowContent"></label></td>
				</tr>
				<tr>
	  				<td><font style="font-size: 13px">Name Of Animal</font></td>
					<td><label id="iAnimal_Name" class="UserTblRowContent"></label></td>
				</tr>
				<tr>
	  				<td><font style="font-size: 13px">Breed Type</font></td>
					<td><label id="iBreed_Type" class="UserTblRowContent"></label></td>
				</tr>
				<tr>
	  				<td><font style="font-size: 13px">Sex</font></td>
					<td><label id="iGender" class="UserTblRowContent"></label></td>
				</tr>
				
	 			</table> 
		</div>  -->
		<div class="col-lg-9" id="iDivUserContent">					
				<div class="bs-component">
				  <ul class="nav nav-tabs" style="margin-bottom: 15px;">
				        <li class="active" id=""><a href="#AnimalTabVital" data-toggle="tab">Vital</a></li> 
				        <li class=""><a href="#AnimalTabGeneral" data-toggle="tab">General</a></li>	
						<li class=""><a href="#AnimalTabWeight" data-toggle="tab">Weight</a></li>	
						<li class=""><a href="#AnimalTabVacci" data-toggle="tab">Vaccination</a></li>		    			
						</ul>
						<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="AnimalTabVital">                
								<jsp:include page="../JSP/vitalInfo.jsp"/>
							</div> 
							 <div class="tab-pane fade " id="AnimalTabGeneral">                
								 <jsp:include page="../JSP/generalInfo.jsp"/>
							</div> 
							 <div class="tab-pane fade " id="AnimalTabWeight">                
								 <jsp:include page="../JSP/weightInfo.jsp"/>
								 
							</div> 
							
							 <div class="tab-pane fade " id="AnimalTabVacci">                
								 <jsp:include page="../JSP/vaccinationInfo.jsp"/>
								 
							</div> 
						</div> 
				</div>
		</div>	
			
	</div>	
	</div>
	</div>
	</div>	
					
<script type="text/javascript" src="../JS/jquery.js"></script>
<script type="text/javascript" src="../JS/jquery.min.js"></script>
<script type="text/javascript" src="../JS/jquery.validate.js"></script>
<script type="text/javascript" src="../JS/bootstrap-select.js"></script>
<script type="text/javascript" src="../JS/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="../JS/bootstrap.min.js"></script>
<script type="text/javascript" src="../JS/bootstrapValidator.js"></script>
<script type="text/javascript" src="../JS/bootstrap-dialog.js"></script>
<script type="text/javascript" src="../JS/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../JS/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="../JS/notifIt.js"></script>

<script type="text/javascript">
$(document).ready(function()
{
	
	var animalNameIDDataUser =	$('#iSelect_Animal').selectpicker();
	animalNameIDDataUser.append('<option value="">-SELECT ANIMAL-</option>');
	loadAnimalNameIDUser();
	animalNameIDDataUser.selectpicker('refresh');
		
});

 function loadAnimalNameIDUser(){
	 var xmlAnimalNmeIDHttpObj;
		if(window.XMLHttpRequest)
	{
			xmlAnimalNmeIDHttpObj = new XMLHttpRequest();
	}
	else
	{
		xmlAnimalNmeIDHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xmlAnimalNmeIDHttpObj.onreadystatechange=function()
	{
			if(xmlAnimalNmeIDHttpObj.readyState==4 && xmlAnimalNmeIDHttpObj.status==200)
		{
				var result=xmlAnimalNmeIDHttpObj.responseText;
				var getAnimaldetails=JSON.parse(result);
			if(getAnimaldetails.JsonAnimalNameIDObjList.length>0)
			{
				for(var i=0;getAnimaldetails.JsonAnimalNameIDObjList.length;i++)
				{	
					var animalId = getAnimaldetails.JsonAnimalNameIDObjList[i].animalId;
					var tagID  = getAnimaldetails.JsonAnimalNameIDObjList[i].tagId;
					var animalName = getAnimaldetails.JsonAnimalNameIDObjList[i].animalName;				
					var DDtext = tagID+"-"+animalName;
					
					$('#iSelect_Animal').append($('<option>').text(DDtext).attr('value',animalId));				
					
				}
			} 
 		}
	};
	xmlAnimalNmeIDHttpObj.open('POST','../AjaxUtilityController?&req_type=getAnimalNameID',false);
	xmlAnimalNmeIDHttpObj.send(); 
} 
 

</script>
</body>
</html>