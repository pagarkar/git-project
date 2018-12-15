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

<title>Add Animal</title>
  
<script type="text/javascript">

</script>
</head>
<body >
<%@include file="../JSP/farmUserHomeHeader.jsp" %>
 <div class="container" style="margin-top: 5px;">
 	<div class="row"> 			
 		<div class="well Small-Well" style="background-color: gray;"><label class="ClsMaintenanceLbl"><font color="sky blue">Add Animal </font></label></div>
		     <div class="col-lg-12">     
       			<nav class="navbar navbar-default">
  					<div class="container-fluid">    
    					<ul class="nav navbar-nav">
      					<li id="ifarmUserHomeTab" ><a href="../JSP/farmUserHome.jsp">Home</a></li>
      					<li class="active" id="iAdminTab" class="dropdown">
		          			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Setting<b class="caret"></b></a>
		          			<ul class="dropdown-menu ClsDropdown">
		          			<li class="active" id="iAddAnimalTab"><a href="../JSP/addAnimalMast.jsp">Add Animal</a></li>                   								            								           								            
		          		<li  id="iViewAnimalTab"><a href="../JSP/viewAnimalMast.jsp">View Animal</a></li>  
		          		</ul>
						</li>
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
		  <form name="AddAnimalForm" action="../AnimalController" id="iAnimalForm" method="post" >					 
		     	     	      
	      <div class="col-md-12"> 	            
	         <table class="table table-bordered table-striped"> 	
						<tr>
							<td colspan="2">
							  <div class="form-group">								 		       		
					       		<div class="col-sm-2" >	
		                    	<label style="font-size: 10px">Tag ID </label>
									     <input class="form-control input-sm abcd1" type="text" name="tagId[]" id="iTagID" maxlength="15" placeholder="Tag ID" required="required"/>
								</div>				       		                   
		                    	 
		                        <div class="col-sm-3" >
		                        <label  style="font-size: 10px">Nick Name </label>
		                            <input class="form-control input-sm abcd1" type="text" name="animalName[]" id="iAnimalName" maxlength="50" placeholder="Nick Name" required="required"/>
		                        </div>
		                          <div class="col-sm-2" >
		                           <label  style="font-size: 10px">Breed Type </label>
		                            <select class="form-control input-sm" name="breedType[]" id="iBreedType" class=" show-tick show-menu-arrow"  required="required">
									    <option value="B">Boer</option>
									     <option value="O">Osmanabadi</option>
									      <option value="S">Sirohi</option>
									     </select>
		                        </div>
		                        <div class="col-sm-2" >
		                           <label  style="font-size: 10px">Sex </label>
		                            <select class="form-control input-sm" name="genderType[]" id="iGenderType" class=" show-tick show-menu-arrow"  required="required">
									    <option value="F">Female</option>
									     <option value="M">Male</option>
									     </select>
		                        </div>           
		                       
								 <div class="col-sm-2">
		                        <br> 
		                        <button type="button" class="btn btn-success btn-sm addAnimalBtn" data-template="itemMast" >ADD +</button>
		                        </div>
		                 <br><br> 
		                 <hr>
		                        </div>
		                                           
				                  <div class="form-group hide" id="itemMastRepository">
				                   <div class="col-lg-2" >
									 <label style="font-size: 10px">Tag ID </label>	
									      <input class="form-control input-sm abcd1" type="text" maxlength="15" placeholder="Tag ID" /> 
									</div>
									
							 		<div class="col-lg-3" >
									 <label style="font-size: 10px">Nick Name </label>
			                            <input class="form-control input-sm abcd1" type="text" maxlength="50" placeholder="Nick Name"  />
			                        </div>
									<div class="col-lg-2" >
									 <label style="font-size: 10px">Breed Type </label>
			                            <select class="form-control input-sm"  class=" show-tick show-menu-arrow" >
									    <option value="B">Boer</option>
									     <option value="O">Osmanabadi</option>
									      <option value="S">Sirohi</option>
									    </select>
			                        </div>
			                      <div class="col-lg-2" >
			                      
			                            <label  style="font-size: 10px">Sex </label>
		                            		<select class="form-control input-sm" name="genderType[]" id="iGenderType" class=" show-tick show-menu-arrow"  >
									    	<option value="F">Female</option>
									     	<option value="M">Male</option>
									     	</select>
			                        </div>		                         
			                
									<div class="col-lg-2">
			                         <br>
			                            <button type="button" class="btn btn-warning btn-sm removeButton">Delete -</button>
			                        </div>
		                        <br><br>
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
									<input type="submit" value="Save" class="btn btn-lg btn-primary addAnimalSaveBtn" id="iAddAnimal" >
									<input type="reset" value="Cancel" class="btn btn-lg btn-warning" id="iReset">
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

$('.addAnimalBtn').on('click', function() {
    var index = $(this).data('index');
  
    if (!index) {            	
        index = 1;
        $(this).data('index', 1);
    }            
    index++;     
    $(this).data('index', index);            
    var template     = $(this).attr('data-template'),
    
    $templateEle = $('#' + template + 'Repository'),
    $row         = $templateEle.clone().removeAttr('id').insertBefore($templateEle).removeClass('hide'),
  
      
    $e_breedtype = $row.find('select').eq(0).attr('name', 'breedType[]' );
    $e_gendertype= $row.find('select').eq(1).attr('name', 'genderType[]' ); 
    
    $e1			 =	$row.find('input').eq(0).attr('name', 'tagId[]' ); 
    $e2			 =	$row.find('input').eq(1).attr('name', 'animalName[]' );
    $e1.attr('placeholder', 'Tag ID');
    $e2.attr('placeholder', 'Nick Name');
    
    $row.on('click', '.removeButton', function(e) {                
    $row.remove();
        
    });
});
</script>

<script type="text/javascript">
$('.addAnimalSaveBtn').on('click', function() {	
</script>	
<%
String SuccessMessage=(String)session.getAttribute("successMsg");

if(SuccessMessage!=null || session.getAttribute("successMsg")!=null){
%>
<script type="text/javascript">
	var SuccessMsg='<%=SuccessMessage%>';	
	notif({
		type: "success",
		msg: SuccessMsg,
		position: "center",
		width: 500,
		height: 40,	
		time:2000
	});
	</script>
	<%}%>
<%
String ErrorMessage=(String)session.getAttribute("failureMsg");

if(ErrorMessage!=null || session.getAttribute("failureMsg")!=null){	
	%>
	<script type="text/javascript">
	var ErrorMsg='<%=ErrorMessage%>';	
	notif({
		type: "error",
		msg: ErrorMsg,
		position: "center",
		width: 500,
		height: 40,	
		time:2000		
	});
	</script>
	<%}
    session.removeAttribute("successMsg");
    session.removeAttribute("failureMsg");
    
	%>
	<script type="text/javascript">
	});
</script>
</script>
</body>
</html>