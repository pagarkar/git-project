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

<title>Farm User</title>
  
<script type="text/javascript">

</script>
</head>
<body >
<%@include file="../JSP/farmUserHomeHeader.jsp" %>
 <div class="container" style="margin-top: 5px;">
 	<div class="row"> 			
 		<div class="well Small-Well"><label class="ClsMaintenanceLbl"><font color="sky blue">Welcome To Farm:</font> <%=Username%></label></div>
		     <div class="col-lg-12">     
       			 <nav class="navbar navbar-default">
  					<div class="container-fluid">    
    					<ul class="nav navbar-nav">
      					<li class="active" id="ifarmUserHomeTab" ><a href="../JSP/farmUserHome.jsp">Home</a></li>
      				    <li id="iAdminTab" class="dropdown">
		          			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Setting<b class="caret"></b></a>
		          			<ul class="dropdown-menu ClsDropdown">
		          			<li id="iAddAnimalTab"><a href="../JSP/addAnimalMast.jsp">Add Animal</a></li> 
		          			<li id="iViewAnimalTab"><a href="../JSP/viewAnimalMast.jsp">View Animal</a></li>                    								            								           								            
		          		</ul>
						</li>
						<li class="" id="iAnimalProfileTab" ><a href="../JSP/animalProfile.jsp">Animal Profile</a></li>      
    					</ul>
					  </div>
				</nav>
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