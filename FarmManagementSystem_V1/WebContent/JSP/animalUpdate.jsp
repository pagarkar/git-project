<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page
	import="com.itrix.Dao.AnimalDao,com.itrix.Model.AnimalModel,com.itrix.Service.AnimalService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.ArrayList"%>

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

</head>
<body>
	<%
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);
		AnimalModel animalModel = new AnimalModel();
		AnimalService serviceObj = new AnimalService();
		animalModel = serviceObj.getAnimalModelById(id);
		//serviceObj.updateAnimal(animalModel);
		//response.sendRedirect("../JSP/viewAnimalMast.jsp");
	%>
	<div class="container" style="margin-top: 5px;">
		<div class="row">
			<div class="container" style="margin-top: 5px;">
				<div id="iHeadUserDropdown">
					<div class="col-md-12">
						<form name="AnimalUpdtForm" action="../AnimalUpdtController"
							id="iAnimalUpdtForm" method="post">

					<div class="col-md-12">
						<table class="table table-bordered table-striped">
							<tr>
								<td colspan="2">
									<div class="form-group">
										<div class="col-sm-2">
											<input type="hidden" name="animalIdUpdt" id="iAnimalIdUpdt" value="<%=animalModel.getAnimalId()%>"> 
											<input type="hidden" name="farmIdUpdt" id="iFarmIdUpdt"	value="<%=animalModel.getFarmId()%>"> 
											<label style="font-size: 10px">Tag ID </label> 
											<input class="form-control input-sm abcd1" type="text" name="tagIdUpdt" id="iTagIDUpdt" maxlength="15" required="required" value="<%=animalModel.getTagId()%>" />
									</div>

								<div class="col-sm-3">
										<label style="font-size: 10px">Nick Name </label> 
										<input class="form-control input-sm abcd1" type="text" name="animalNameUpdt" id="iAnimalNameUpdt" maxlength="50" required="required" value="<%=animalModel.getAnimalName()%>" />
							</div>
									<div class="col-sm-2">
										<label style="font-size: 10px">Breed Type </label>
										<select class="form-control input-sm" name="breedTypeUpdt" id="iBreedTypeUpdt" class=" show-tick show-menu-arrow" required="required" value="<%=animalModel.getBreedType()%>">
													<option value="B">Boer</option>
													<option value="O">Osmanabadi</option>
													<option value="S">Sirohi</option>
										</select>
											</div>
												<div class="col-sm-2">
													<label style="font-size: 10px">Sex </label>
													<select class="form-control input-sm" name="genderTypeUpdt" id="iGenderTypeUpdt" class=" show-tick show-menu-arrow" required="required" value="<%=animalModel.getGender()%>">
														<option value="F">Female</option>
														<option value="M">Male</option>
													</select>
												</div>

												<br>
												<br>
												<hr>
											</div>

										</td>
									</tr>
								</table>

								<div class="col-md-9" align="center">
									<table>
										<tr>
											<td align="center" colspan="2">
												<div class="ClsPdHideForUpdt" align="center">
													<input type="submit" value="Save"
														class="btn btn-lg btn-primary addAnimalUpdtBtn"
														id="iUpdateAnimal"> <input type="reset"
														value="Cancel" class="btn btn-lg btn-warning" id="iReset">
												</div>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>