package com.itrix.Controller;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itrix.Service.FarmUserService;
import com.itrix.Model.FarmModel;
import com.itrix.Model.FarmUserModel;


@WebServlet("/FarmSignUpController")
public class FarmSignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FarmSignUpController() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
						String name=request.getParameter("name");
						String mobno=request.getParameter("mobno");
						String email_id=request.getParameter("email_id");
						String address=request.getParameter("address");
						String user_name=request.getParameter("user_name");
						String password=request.getParameter("password");
						String farmName = request.getParameter("farmName");
						String animalType = request.getParameter("animalType");
						FarmUserModel userObj=new FarmUserModel();
						userObj.setName(name);
						userObj.setMobno(mobno);
						userObj.setEmailId(email_id);
						userObj.setAddress(address);
						userObj.setUserRole('U');
						userObj.setActiveStatus('A');
						userObj.setUserName(user_name);
						userObj.setPassword(password);
						//userObj.setUserType("F");
				        
						FarmModel farmObj  = new FarmModel();
						farmObj.setFarmName(farmName);
						farmObj.setAnimalType(animalType);
						
						boolean result = false;
						FarmUserService farmUserService = new FarmUserService();
						result = farmUserService.farmUserInsert(userObj,farmObj);
												
						 HttpSession htp = request.getSession();
						 ResourceBundle rb = ResourceBundle.getBundle("ApplicationMessages");
						 if(result){						  
						    String Msg =rb.getString("UserMastAddSuccessMsg");
						   	htp.setAttribute("successMsg",Msg);
							response.sendRedirect("login.jsp");
						 }else
							{								
							 	String Msg =rb.getString("UserMastAddFailureMsg");
								htp.setAttribute("failureMsg",Msg);				
								response.sendRedirect("JSP/farmUserSignUp.jsp");
									
							}
		
	
			}

}
