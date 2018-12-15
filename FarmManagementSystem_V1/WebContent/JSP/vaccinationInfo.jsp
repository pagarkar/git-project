<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vaccination Info</title>

</head>
<body onload="">
	<div class="container ">
		<div class="modal-dialog">
			<div class="">
				<div class="modal-body">
					<div class="col-lg-9" id="">

						<form name="VacciForm" id="iVacciForm"
							action="../VacciController" method="post">
							<div>
								<font
									style="font-style: normal; font-size: 25px; color: #808080;">
									Vaccination Information</font>
							</div>
							<table class="table table-striped" style="width: 100%"
								id="iVacciInfoTbl">
								
							</table>
						</form>
					</div>
					<div class="col-lg-3" id="">
						<div class="bs-component">
							<button data-toggle="modal" data-target="#VacciInfoEdit"
								id="iVacciInfoEdit" title="Edit Vacci Info"
								class="btn btn-success btn-sm"
								onclick="getVacciInfoOnAnimalIdSelect_Updt();">Add Record</button>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Bank In -->
	</div>
	<!-- *******************************General Info Modal*************************************  -->
	<div class="modal fade " id="VacciInfoEdit">
		<div class="modal-dialog modal-midle">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" id="resetViewBtn" class="close"
						data-dismiss="modal" onclick="">×</button>
					<font style="font-size: 20px;">Edit Record </font>
				</div>
				<div class="modal-body">
					<form id="iVacciInfoUpdateForm" name="VacciInfoUpdateForm">
						<table class="table table-striped">
							<tr>
								<td>
									<div class="form-group" style="margin-top: 10px">
										<font
											style="font-style: normal; font-size: 15px; color: #808080;">
											Eye Color</font>
									</div>
								</td>
								
						
							<tr style="height: 100px">
								<td colspan="2" align="center"><input type="button"
									id="saveWtBtn" class="btn btn-success " value="Save"
									onclick="saveVacciRecord();"></td>
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
$('#iVaccitDate').datepicker({
    format: "dd-M-yyyy",
    startDate: "01-Jan-1920",
    endDate: "01-Jan-2019",
    todayBtn: "linked",
    autoclose: true,
    todayHighlight: true
    });
$("#iVaccitDate").datepicker().datepicker("setDate", new Date());
</script>
</body>
</html>