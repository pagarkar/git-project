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
<%
String Username="";

String UserEmailID="";
int LoggedUid =0;
Character UserRole=' ';
try{	
	if(session.getAttribute("LoggedUid")==null || session.getAttribute("LoggedUname")==null || session.getAttribute("LoggedUrole")==null)
	{	
	   response.sendRedirect("../login.jsp");	 
	}
	else
	{
		LoggedUid =  (Integer)session.getAttribute("LoggedUid");
		UserRole=(Character)session.getAttribute("LoggedUrole");
		Username=(String)session.getAttribute("LoggedUname");			
		UserEmailID=(String)session.getAttribute("LoggedEmailID");
		System.out.println("Login Details "+LoggedUid+" "+UserRole+" "+Username);
	}
}catch(Exception e){
	e.printStackTrace();
}
%>   
<script type="text/javascript">

</script>
</head>
<body onload="">
<div class="navbar navbar-default-login navbar-static-top" style="background-color: #E5E8E8;">
	<div class="container">	   
		   <table class="table" id="HeadTbl">
			      <tr>
				      <td width="85%" >
				          <div class="navbar-header">				          
						          <span class="Proj-heading">					           
							         <a href="../JSP/farmUserHome.jsp"> <img src="../IMAGES/goat-coin-logo.png" alt="" style="height: 70px;">  </a>              
							       </span>
					      </div>	      
				      </td>
				        	        
				      <td>				       	             
				            <ul class="nav navbar-nav navbar-right">
							    <li class="dropdown">
						            <a href="#" class="dropdown-toggle img-circle ControlMenu" title="Account Info: <%=Username%>&#xA;(<%=UserEmailID%>)" data-toggle="dropdown"><img src="../IMAGES/UserProfileIcon.png" /></a>				            
						            <ul class="dropdown-menu">
						                <li class="ClsUsername"> <%=Username%> </li>
						                <li class="ClsUsername"> <%=UserEmailID%></li>						             					               						           
						                <li class="divider"></li>
						                <li><a href="../LogoutServlet">Log Out</a></li>			                			               
						            </ul>					           
							    </li>					     
					 		</ul> 
				      </td>       
				     
			      </tr>      
		      </table>
      </div><!-- container closed -->   
</div><!--navbar closed  -->
				
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