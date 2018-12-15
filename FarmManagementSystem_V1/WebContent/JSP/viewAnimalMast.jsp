<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page
	import="java.util.ArrayList, com.itrix.Dao.AnimalDao,com.itrix.Model.AnimalModel,com.itrix.Service.AnimalService,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css" href="../CSS/metro/crimson/jtable.css" />
<link rel="stylesheet" type="text/css" href="../CSS/jquery-ui-1.10.3.custom.css" />
<link rel="stylesheet" type="text/css" href="../CSS/validationEngine.jquery.css" />
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../CSS/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap-dialog.css">
<link rel="stylesheet" type="text/css" href="../CSS/bootstrap-select.css">
<link rel="stylesheet" type="text/css" href="../CSS/Combined.css">
<link rel="stylesheet" type="text/css" href="../CSS/notifIt.css">

<title>View Animal</title>

<script type="text/javascript">
	
</script>
</head>
<body>

	<%
		AnimalService serviceObj = new AnimalService();
		List<AnimalModel> list = serviceObj.getAnimalModelDetails();
		request.setAttribute("list", list);
	%>


	<%@include file="../JSP/farmUserHomeHeader.jsp"%>
	<div class="container" style="margin-top: 5px;">
		<div class="row">
			<div class="well Small-Well" style="background-color: gray;">
				<label class="ClsMaintenanceLbl"><font color="sky blue">View
						Animal </font></label>
			</div>
			<div class="col-lg-12">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<ul class="nav navbar-nav">
							<li id="ifarmUserHomeTab"><a href="../JSP/farmUserHome.jsp">Home</a></li>
							<li class="active" id="iAdminTab" class="dropdown"><a
								href="#" class="dropdown-toggle" data-toggle="dropdown">Setting<b
									class="caret"></b></a>
								<ul class="dropdown-menu ClsDropdown">
									<li id="iAddAnimalTab"><a href="../JSP/addAnimalMast.jsp">Add
											Animal</a></li>
									<li class="active" id="iViewAnimalTab"><a
										href="../JSP/viewAnimalMast.jsp">View Animal</a></li>
								</ul></li>
									<li class="" id="iAnimalProfileTab" ><a href="../JSP/animalProfile.jsp">Animal Profile</a></li>      
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>


	<div class="container" style="margin-top: 5px;">
		<div class="row">
			<div class="container" style="margin-top: 5px;">
				<div id="iHeadUserDropdown">
					<div class="col-md-12">
						<table border="2px" width=100%>
							<tr>
								<th>AnimalId</th>
								<th>FarmId</th>
								<th>Name</th>
								<th>Gender</th>
								<th>TagId</th>
								<th>Breedtype</th>
								<th>Edit</th>
								<th>Delete</th>
							</tr>
							<%
								for (AnimalModel animalModel : list) {

									out.print("<tr><td>" + animalModel.getAnimalId() + "</td><td>" + animalModel.getFarmId() + "</td><td>"
											+ animalModel.getAnimalName() + "</td><td>" + animalModel.getGender() + "</td><td>"
											+ animalModel.getTagId() + "</td><td>" + animalModel.getBreedType() + "</td><td>"
											+ "<a href='../JSP/animalUpdate.jsp?id=" + animalModel.getAnimalId()
											+ "'>edit</a></td><td><a href='../JSP/animalDelete.jsp?id=" + animalModel.getAnimalId()
											+ "'>delete</a></td></tr>");
								}
							%>
							</table>
   				</div>
			</div>
		</div>
	</div>
</div>
						
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

</body>
</html>