<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Weight Info</title>

</head>
<body onload="">
	<div class="container ">
		<div class="bs-component" align="right">
			<button data-toggle="modal" data-target="#WeightInfoInsertModal"
				id="iWeightInfoInsertModal" title="Add Weight Info"
				class="btn btn-success btn-sm"
				onclick="">Add Record</button>

		</div>
		<form name="WeightForm" id="iWeightForm"
							action="../WeightController" method="post">
							<div>
								<font
									style="font-style: normal; font-size: 25px; color: #808080;">
									Weight Information</font>
							</div>
							<table class="table table-bordered " style="width: 100%"
								id="iWeightInfoTbl">	
								<tr> 	</tr>											  			
		  				</table>
						</form>
		<!-- Bank In -->
	</div>
	<!-- *******************************Weight Info Insert Modal *************************************  -->
	<div class="modal fade " id="WeightInfoInsertModal">
		<div class="modal-dialog modal-midle">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" id="resetViewBtn" class="close"
						data-dismiss="modal" onclick="">×</button>
					<font style="font-size: 20px;">Add Record </font>
				</div>
				<div class="modal-body">
					<form method="post" id="iWeightInfoInsertForm" name="WeightInfoInsertForm">
						<table class="table table-striped">
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Weight (in Kg.)</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="text" name="animalWeight" id="iAnimalWeight"
											class="form-control input-sm" >
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Weight Date</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="text" name="weightDate" id="iWeightDate"
												placeholder="Date" readonly 
												class="input-sm form-control"
												style="background-color: #FFFFFF;"> <span
												class="input-group-btn">
												<button type="button" class="btn btn-sm btn-danger"
													title="Clear Date" id="iWeightDate"
													onclick="DateFunctionWt(this.value)">X</button>
											</span>
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Weight Note</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="text" name="wtNote" id="iWtNote"
											class="form-control input-sm">
									</div>

								</td>
							</tr>
							<tr style="height: 100px">
								<td colspan="2" align="center"><input type="button"
									id="saveWtBtn" class="btn btn-success " value="Save"
									onclick="insertWeightRecord();"></td>
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
	
	
	<!-- *******************************Weight Info Edit Modal*************************************  -->
	<div class="modal fade " id="wtUpdateModal">
		<div class="modal-dialog modal-midle">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" id="resetViewBtn" class="close"
						data-dismiss="modal" onclick="">×</button>
					<font style="font-size: 20px;">Edit Record </font>
				</div>
				<div class="modal-body">
					<form method="post" id="iWeightInfoUpdtForm" name="WeightInfoUpdtForm">
						<table class="table table-striped">
						<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Weight ID</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="text" name="wtId_Updt" id="iwtId_Updt"
											class="form-control input-sm" readonly="readonly">
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Weight (in Kg.)</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="text" name="animalWeight_Updt" id="iAnimalWeight_Updt"
											class="form-control input-sm" >
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Weight Date</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="text" name="weightDate_Updt" id="iWeightDate_Updt"
												placeholder="Date"  
												class="input-sm form-control"
												style="background-color: #FFFFFF;"> <span
												class="input-group-btn">
												<button type="button" class="btn btn-sm btn-danger"
													title="Clear Date" id="iWeightDate_Updt"
													onclick="">X</button>
											</span>
									</div>

								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Weight Note</font>

									</div>
								</td>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<input type="text" name="wtNote_Updt" id="iWtNote_Updt"
											class="form-control input-sm">
									</div>

								</td>
							</tr>
							<tr style="height: 100px">
								<td colspan="2" align="center"><input type="button"
									id="updateWtBtn" class="btn btn-success " value="Update"
									onclick="updateWeightRecord();"></td>
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
	<script type="text/javascript" src="../JS/moment.min.js"></script>
	<script type="text/javascript" src="../JS/bootstrap-datepicker.js"></script>

	<script type="text/javascript">
	$('#iWeightDate').datepicker({
	    format: "dd-mm-yyyy",
	    startDate: "01-01-1920",
	    endDate: "01-01-2019",
	    todayBtn: "linked",
	    autoclose: true,
	    todayHighlight: true
	    });
	$("#iWeightDate").datepicker().datepicker("setDate", new Date());
	function DateFunctionWt()
	{
		$('#iWeightDate').val("");
	}
	$('#iWeightDate_Updt').datepicker({
	    format: "dd-mm-yyyy",
	    startDate: "01-01-1920",
	    endDate: "01-01-2019",
	    todayBtn: "linked",
	    autoclose: true,
	    todayHighlight: true
	    });
	$("#iWeightDate_Updt").datepicker().datepicker("setDate", new Date());
	function insertWeightRecord(){
		 
		        var animalId=document.SelctDropdownAnimalProfileForm.Select_Animal.value;		
		       	var formById =document.getElementById('iWeightInfoInsertForm');	
				var formData = new FormData(formById);
				
				$("#saveWtBtn").attr("disabled", true);
				 $.ajax({
					url : "../WeightInfoController?req_type=insertWeightRecord&animalId="+animalId,
					type : "POST",
					data : $('#iWeightInfoInsertForm').serialize(), 
					success : function(msg) {
						$('#WeightInfoInsertModal').modal('toggle'); 
						$('#WeightInfoInsertModal').fadeOut();	
						clearWtInfoTbl();
						getWeightInfoOnAnimalIdSelect();
						alert(msg);
						$("#saveWtBtn").attr("disabled", false);			
					},
					error : function(msg) {
						alert(msg);
					} 
				}); 
	}
	

	 function getWeightInfoOnAnimalIdSelect(){
		 clearWtInfoTbl();
		 var animalId=document.SelctDropdownAnimalProfileForm.Select_Animal.value;			
		 var xmlAnimalWeightHttpObj;
			if(window.XMLHttpRequest)
		{
				xmlAnimalWeightHttpObj = new XMLHttpRequest();
		}
		else
		{
			xmlAnimalWeightHttpObj = new ActiveXObject("Microsoft.XMLHttp");
		}
			xmlAnimalWeightHttpObj.onreadystatechange=function()
		{
				if(xmlAnimalWeightHttpObj.readyState==4 && xmlAnimalWeightHttpObj.status==200)
			{
					var result=xmlAnimalWeightHttpObj.responseText;
					var getAnimalWtInfo=JSON.parse(result);
					
				if(getAnimalWtInfo.JsonAnimalWtInfoObjList.length>0)
				{
					 
					$('#iWeightInfoTbl tr:first').after('<tr > <th>Sr No </th> <th>Wt. ID </th> <th>Animal ID </th> <th>Farm ID </th> <th>Weight </th> <th>Date of Weight </th> <th>Note</th> <th>Action</th></tr>');
					 for(var i=0; i<getAnimalWtInfo.JsonAnimalWtInfoObjList.length; i++)
						{
						   var SrNo=i+1;
						   var j=i+1;
					$('#iWeightInfoTbl tr:last').after('<tr id="'+getAnimalWtInfo.JsonAnimalWtInfoObjList[i].wtId+'"> <td align="right" style="width: 8%" ><input id="iAssignIDSrNo'+j+'" type="text" name="assignIDSrNo[]" readonly   class="input-sm form-control" value="'+SrNo+'"/></td>  <td align="right" style="width: 8%"><input id="iWtId'+j+'" type="text" name="wtID[]" readonly   class="input-sm form-control" value="'+getAnimalWtInfo.JsonAnimalWtInfoObjList[i].wtId+'"/></td>  <td align="right" style="width: 8%"><input id="iAnimalID'+j+'" type="text" name="animalID[]" readonly   class="input-sm form-control" value="'+getAnimalWtInfo.JsonAnimalWtInfoObjList[i].animalId+'"/></td><td style="width: 8%"><input id="iFarmId'+j+'" name="farmId[]" class="input-sm form-control pqrs" readonly  type="text" value="'+getAnimalWtInfo.JsonAnimalWtInfoObjList[i].farmId+'" /></td><td style="width: 10%"><input id="iWeight'+j+'" name="weight[]" class="input-sm form-control pqrs" readonly  type="text" value="'+getAnimalWtInfo.JsonAnimalWtInfoObjList[i].weight+'" /></td><td style="width: 15%"><input id="iWeightDt'+j+'" name="wtDate[]" class="input-sm form-control pqrs"  readonly type="text" value="'+getAnimalWtInfo.JsonAnimalWtInfoObjList[i].wtDate+'" /></td><td style="width: 20%"><input id="iNote'+j+'" name="note[]" class="input-sm form-control pqrs" readonly type="text" value="'+getAnimalWtInfo.JsonAnimalWtInfoObjList[i].note+'" /></td> <td style="width: 30%">  <button onclick="editWeightInfo('+getAnimalWtInfo.JsonAnimalWtInfoObjList[i].wtId+')" type="button" class="btn btn-info " data-toggle="modal" data-target="#wtUpdateModal">Edit / View</button> <button class="btn btn-danger"  onclick="deleteWeightInfo('+getAnimalWtInfo.JsonAnimalWtInfoObjList[i].wtId+');">Delete</button></td></tr>');
						}
				} 
			}
		};
		xmlAnimalWeightHttpObj.open('POST',"../WeightInfoController?&req_type=getAnimalWtInfo&animalId="+animalId,false);
		xmlAnimalWeightHttpObj.send(); 
	 }
	 
function clearWtInfoTbl(){
	$('#iWeightInfoTbl tr').empty();
}	 

 function editWeightInfo(wtInfoId){ 	
	 var xmlAnimalWtUpdtHttpObj;
		if(window.XMLHttpRequest)
	{
			xmlAnimalWtUpdtHttpObj = new XMLHttpRequest();
	}
	else
	{
		xmlAnimalWtUpdtHttpObj = new ActiveXObject("Microsoft.XMLHttp");
	}
		xmlAnimalWtUpdtHttpObj.onreadystatechange=function()
	{
			if(xmlAnimalWtUpdtHttpObj.readyState==4 && xmlAnimalWtUpdtHttpObj.status==200)
		{
				var result=xmlAnimalWtUpdtHttpObj.responseText;
				var wtInfoUpdtObj=JSON.parse(result);
				
			if(wtInfoUpdtObj.JsonWtInfoUpdtObjList.length>0)
			{
				
				$("#iwtId_Updt").val(wtInfoUpdtObj.JsonWtInfoUpdtObjList[0].wtId);				
				$("#iAnimalWeight_Updt").val(wtInfoUpdtObj.JsonWtInfoUpdtObjList[0].weight);				
	    		$("#iWtNote_Updt").val(wtInfoUpdtObj.JsonWtInfoUpdtObjList[0].note);
	    		var weightDt = new Date(wtInfoUpdtObj.JsonWtInfoUpdtObjList[0].wtDate);			    		
				$('#iWeightDate_Updt').val(moment(weightDt).format("DD-MM-YYYY"));	
				
			} 
		}
	};
	xmlAnimalWtUpdtHttpObj.open('POST',"../WeightInfoController?&req_type=getAnimalWtInfoUpdt&wtInfoId="+wtInfoId,false);
	xmlAnimalWtUpdtHttpObj.send(); 
 }

 
 function updateWeightRecord(){
		$("#updateWtBtn").attr("disabled", true);
		$.ajax({
			url : "../WeightInfoController?req_type=update",
			type : "POST",
			data : $('#iWeightInfoUpdtForm').serialize(),
			success : function(data) {
				$('#wtUpdateModal').modal('toggle'); 
				$('#wtUpdateModal').fadeOut();				
				alert(data);
				clearWtInfoTbl();
				getWeightInfoOnAnimalIdSelect();
				$("#updateWtBtn").attr("disabled", false);
				
			},
			error : function() {
				alert('AJAX NOT WORK');
			}
		});
 }
 
 function deleteWeightInfo(wtInfoId) {		
	 var result = confirm("Do you want to delete entry? ID="+wtInfoId);
		if(result==true){
			var data='wtInfoId='+wtInfoId;
			$.ajax({
				url:"../WeightInfoController?req_type=DeleteWtInfo",
			    type:"POST",
			    data:data,
			    success : function(data) {
			    	//$("#"+DeleteWtInfo).remove();			    	
			       	alert(data);
					
				},
				error : function() {
					alert('AJAX NOT WORK');
				}
				
			});
		}
	} 
</script>
</body>
</html>