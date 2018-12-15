package com.itrix.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itrix.Model.FarmModel;
import com.itrix.Model.FarmUserModel;
import com.itrix.Service.FarmUserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
    	try {
    		/**************************Get text field names from jsp************************************/
    		   String username=request.getParameter("username");
    		   String password=request.getParameter("password");
    		  /*********************************password encrption****************************************/
			   /*EncryptService encryptService=new EncryptService();
			   String key="itrix"; 
			   String encrytPassword = encryptService.encrypt(key, password);*/
			   //System.out.println("password: "+password);
	    	/*********************************set into bean object**************************************/
			   FarmUserModel  userBean=new FarmUserModel();
	    	    userBean.setUserName(username);
	    	    userBean.setPassword(password);
	    	    boolean resultFlag=false;
	    	    ArrayList<FarmUserModel> userlist=new ArrayList<FarmUserModel>();
	    	    FarmUserService loginService=new FarmUserService();
	    	    resultFlag=loginService.checkUserPass(userBean);
	    	    HttpSession session=request.getSession();
	    	    session.setMaxInactiveInterval(20*120);
	    	    ResourceBundle rbMSG=ResourceBundle.getBundle("ApplicationMessages");
	    	    if(resultFlag==true)
	    	    {
	    	    	userlist=loginService.getUserDetails(userBean);
	    	    	
	    	    	if (userlist!=null)
	    	    	{
	    	    		if(userlist.size()==1){
	    	    			FarmUserModel ubean=userlist.get(0);
		    	    		int userId=ubean.getUserId();
		    	    		String UserName=ubean.getUserName();
		    	    		String EmailID=ubean.getEmailId();
		    	    		char userRole=ubean.getUserRole(); 
		    	    		FarmModel farmObj = loginService.getfarmDetails(userId);
		    	    		
		    	    		session.setAttribute("LoggedUid", userId);
		    	    		session.setAttribute("LoggedUname", UserName);
		    	    		session.setAttribute("LoggedUrole", userRole);
		    	    		session.setAttribute("LoggedEmailID", EmailID);
		    	    		session.setAttribute("FarmId", farmObj.getFarmId());
		    	    		session.setAttribute("FarmName", farmObj.getFarmName());
		    	    		session.setAttribute("AnimalType", farmObj.getAnimalType());
		    	    		if(userRole=='A'){
								response.sendRedirect("JSP/adminHome.jsp");
							}else{
								response.sendRedirect("JSP/farmUserHome.jsp");
							}		    			 	
	    	    		}else{
	    	    			//System.out.println("Multiple user found in database");
	    	    			String error=rbMSG.getString("LoginFailedMsg");				 	
	    				 	session.setAttribute("LoginErrorMSG", error);
	    				 	response.sendRedirect("login.jsp");
	    	    		}	    	    		
					}	    	    				 	
				 }
	    		else
	    		{
	    			String error=rbMSG.getString("LoginFailedMsg");				 	
				 	session.setAttribute("LoginErrorMSG", error);
				 	response.sendRedirect("login.jsp");
	    		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
