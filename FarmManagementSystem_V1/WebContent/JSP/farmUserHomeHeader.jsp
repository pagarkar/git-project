<%
String Username="";
String UserEmailID="";
int LoggedUid =0;
Character UserRole=' ';
int FarmId=0;
String FarmName="";
String AnimalType="";
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
		FarmId=(Integer)session.getAttribute("FarmId");
		FarmName=(String)session.getAttribute("FarmName");
		AnimalType=(String)session.getAttribute("AnimalType");
		System.out.println("farmUserHomeHeader "+LoggedUid+" "+UserRole+" "+Username+" "+FarmId+" "+FarmName);
	}
}catch(Exception e){
	e.printStackTrace();
}
%>   
<script type="text/javascript">

</script>
<div class="navbar navbar-default-login navbar-static-top" style="background-color: #3399ff;">
	<div class="container">	   
		   <table class="table" id="HeadTbl">
			      <tr>
				      <td width="85%" >
				          <div class="navbar-header">				          
						          <span class="Proj-heading">					           
							         <a href="../JSP/farmUserHome.jsp"> <img src="../IMAGES/logoFarm.jpg" alt="" style="height: 70px;">  </a>              
							       </span>
					      </div>	      
				      </td>
				      <td width="10%" style="padding-top: 30px">
				      <%if(UserRole=='U' || UserRole.equals('U')){%>
				        <a title="Farm Name" class="btn btn-sm btn-warning " href="../JSP/farmInfo.jsp"> <%=FarmName%></a>
				      <%}%>				      
				      </td>	     	        
				      <td>				       	             
				            <ul class="nav navbar-nav navbar-right">
							    <li class="dropdown">
						            <a href="#" class="dropdown-toggle  ControlMenu" title="Account <%=Username%>&#xA;(<%=UserEmailID%>)" data-toggle="dropdown"><img src="../IMAGES/profileIcon2.png" style="width: 40px"/></a>				            
						            <ul class="dropdown-menu">
						                <li class="ClsUsername"> <%=Username%> </li>
						                <li class="ClsUsername"> <%=UserEmailID%></li>	
						                <li class="divider"></li>
						                <li><a href="../JSP/farmUserView.jsp">Edit Profile</a></li>					             					               						           
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