package com.itrix.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itrix.Model.AnimalModel;
import com.itrix.Model.FarmModel;
import com.itrix.Model.FarmUserModel;
import com.itrix.Model.GeneralModel;
import com.itrix.Service.AjaxUtilityService;
import com.itrix.Service.FarmUserService;
import com.itrix.Service.WeightInfoService;
import com.itrix.Utility.Conversion;

/**
 * Servlet implementation class AjaxUtilityController
 */
@WebServlet("/AjaxUtilityController")
public class AjaxUtilityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxUtilityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		Conversion conversion=new Conversion();
		String reqType=request.getParameter("req_type");
		int LoggedUid =0;
		Character UserRole=' ';
		LoggedUid =  (Integer)session.getAttribute("LoggedUid");
		UserRole=(Character)session.getAttribute("LoggedUrole");
		String Username=(String)session.getAttribute("LoggedUname");			
		String UserEmailID=(String)session.getAttribute("LoggedEmailID");
		int FarmId=(Integer)session.getAttribute("FarmId");
		String FarmName=(String)session.getAttribute("FarmName");
		String AnimalType=(String)session.getAttribute("AnimalType");
		
		/************************get Animal id name in dropdown******************************/
		if (reqType.equals("getAnimalNameID") || reqType=="getAnimalNameID")
		{
		
			ArrayList<AnimalModel> animalNameIDObjList=new ArrayList<AnimalModel>();	
			
			try
			{			
				
					 AjaxUtilityService utilDaoObj = new AjaxUtilityService();						
					 animalNameIDObjList = utilDaoObj.getAnimalNameIDSer(UserRole,LoggedUid, FarmId);	
			       //  System.out.println("animalNameIDObjList "+animalNameIDObjList.size());
					
				/******create json object and convert it into a string*******************/		    
				Gson gsonObject=new Gson();
				JsonElement jElement=gsonObject.toJsonTree(animalNameIDObjList);
				JsonArray jArray=jElement.getAsJsonArray();
				
				JsonObject jObj=new JsonObject();
				jObj.add("JsonAnimalNameIDObjList", jArray);				    
				String strObject=gsonObject.toJson(jObj);
				/******write json object string to response text*******************/
				response.getWriter().write(strObject);		
			}	
			catch (Exception e)
			{
				e.printStackTrace();
			} 		
		 }
		
		/************************get Animal Detail ******************************/
		if (reqType.equals("getAnimalDeatail") || reqType=="getAnimalDeatail")
		{
			String animalIdStr = request.getParameter("animal_Id");
			int animalId = Integer.parseInt(animalIdStr);
			ArrayList<AnimalModel> animalDetailObjList=new ArrayList<AnimalModel>();	
			
			try
			{			
				
					 AjaxUtilityService utilDaoObj = new AjaxUtilityService();						
					 animalDetailObjList = utilDaoObj.getAnimalDetailSer(UserRole,LoggedUid, FarmId, animalId);	
			        // System.out.println("animalNameIDObjList "+animalDetailObjList.size());
					
				/******create json object and convert it into a string*******************/		    
				Gson gsonObject=new Gson();
				JsonElement jElement=gsonObject.toJsonTree(animalDetailObjList);
				JsonArray jArray=jElement.getAsJsonArray();
				
				JsonObject jObj=new JsonObject();
				jObj.add("JsonAnimalDetailObjList", jArray);				    
				String strObject=gsonObject.toJson(jObj);
				/******write json object string to response text*******************/
				response.getWriter().write(strObject);		
			}	
			catch (Exception e)
			{
				e.printStackTrace();
			} 		
		 }
		
		/************************Update Animal Vital Information ******************************/
		if (reqType.equals("updateVitalInfo") || reqType=="updateVitalInfo")
		{
			String animalIdStr = request.getParameter("Ani_ID_Updt");
			int animalId = Integer.parseInt(animalIdStr);
			String tagIdStr=request.getParameter("Tag_ID_Updt");
			
			String name=request.getParameter("Animal_Name_Updt");
			String breedType=request.getParameter("Breed_Type_Updt");
			String gender=request.getParameter("Gender_Updt");
			String electronicId=request.getParameter("ElectronicId_Updt");
			String certifiedId=request.getParameter("CertifiedId_Updt");
			
			AnimalModel animalModel=new AnimalModel();
			animalModel.setAnimalId(animalId);
			animalModel.setTagId(tagIdStr);
			animalModel.setAnimalName(name);
			animalModel.setGender(gender);
			animalModel.setBreedType(breedType);
			animalModel.setElectronicId(electronicId);
			animalModel.setCertifiedId(certifiedId);
			
			AjaxUtilityService utilSer = new AjaxUtilityService();
			boolean result = utilSer.updateVitalInfo(animalModel);
			PrintWriter out=response.getWriter();
			if(result==true){
				out.println("Animal vital information updated successfully");
			}else{
				out.println("Error: In operation!");
			}
		}
		
		/************************get Animal Detail ******************************/
		if (reqType.equals("getGeneralInfo") || reqType=="getGeneralInfo")
		{
			String animalIdStr = request.getParameter("animal_Id");
			int animalId = Integer.parseInt(animalIdStr);
			ArrayList<GeneralModel> generalInfoObjList=new ArrayList<GeneralModel>();	
			
			try
			{			
				
					 AjaxUtilityService utilDaoObj = new AjaxUtilityService();						
					 generalInfoObjList = utilDaoObj.getGeneralInfoSer(UserRole,LoggedUid, FarmId, animalId);	
			        // System.out.println("animalNameIDObjList "+animalDetailObjList.size());
					
				/******create json object and convert it into a string*******************/		    
				Gson gsonObject=new Gson();
				JsonElement jElement=gsonObject.toJsonTree(generalInfoObjList);
				JsonArray jArray=jElement.getAsJsonArray();
				
				JsonObject jObj=new JsonObject();
				jObj.add("JsonGeneralInfoObjList", jArray);				    
				String strObject=gsonObject.toJson(jObj);
				/******write json object string to response text*******************/
				response.getWriter().write(strObject);		
			}	
			catch (Exception e)
			{
				e.printStackTrace();
			} 		
		 }
		/************************Update Animal General Information ******************************/
		if (reqType.equals("updateGeneralInfo") || reqType=="updateGeneralInfo")
		{
			String animalIdStr = request.getParameter("animalId");
			int animalId = Integer.parseInt(animalIdStr);
					
			String eyeColor=request.getParameter("EyeColor_Updt");
			String earType=request.getParameter("EarType_Updt");
			String hornType=request.getParameter("HornType_Updt");
			String mouthType=request.getParameter("MouthType_Updt");
			String tattoos=request.getParameter("Tattoos_Updt");
			String bodyColor=request.getParameter("BodyClr_Updt");
			String sourceType = request.getParameter("SourceType_Updt");
			String sourceDetails ="";
			if(sourceType.equalsIgnoreCase("borninfarm")){
				sourceDetails= request.getParameter("birthDet");
			}
			if(sourceType.equalsIgnoreCase("purchased")){
				sourceDetails= request.getParameter("purchaseDet");
			}
			if(sourceType.equalsIgnoreCase("leased")){
				sourceDetails= request.getParameter("leasedDet");
			}
			if(sourceType.equalsIgnoreCase("boarded")){
				sourceDetails= request.getParameter("boardingDet");
			}
			GeneralModel generalModel=new GeneralModel();
			generalModel.setAnimalId(animalId);
			generalModel.setEyeColor(eyeColor);
			generalModel.setEarType(earType);
			generalModel.setHornType(hornType);
			generalModel.setMouthType(mouthType);
			generalModel.setTattoos(tattoos);
			generalModel.setBodyColor(bodyColor);
			generalModel.setSourceType(sourceType);
			generalModel.setSourceDetails(sourceDetails);
			
			AjaxUtilityService utilSer = new AjaxUtilityService();
			boolean result = utilSer.updateGeneralInfo(generalModel);
			PrintWriter out=response.getWriter();
			if(result==true){
				out.println("General information updated successfully");
			}else{
				out.println("Error: In operation!");
			}
		}
		
		
		/************************Get User Information ******************************/
		if (reqType.equals("getUserInfo") || reqType=="getUserInfo")
		{
			System.out.println("In Ajax utility getUserInfo User ID "+LoggedUid);
			FarmUserModel userBean  = new FarmUserModel();
			userBean.setUserId(LoggedUid);
			FarmUserService serObj =  new FarmUserService();
			ArrayList<FarmUserModel> userDetailsList = serObj.getUserDetailsByIuserID(userBean);
			System.out.println("List "+userDetailsList.size());
			
			/******create json object and convert it into a string*******************/		    
			Gson gsonObject=new Gson();
			JsonElement jElement=gsonObject.toJsonTree(userDetailsList);
			JsonArray jArray=jElement.getAsJsonArray();
			
			JsonObject jObj=new JsonObject();
			jObj.add("JsonUserInfoObjList", jArray);				    
			String strObject=gsonObject.toJson(jObj);
			/******write json object string to response text*******************/
			response.getWriter().write(strObject);
			
		}
		
		/************************Update User  Information ******************************/

		
		if (reqType.equals("updateUserInfo") || reqType=="updateUserInfo")
		{
			String name=request.getParameter("Name_Updt");
			String mobno=request.getParameter("Mobile_Updt");
			String emailId=request.getParameter("Email_Id_Updt");
			String address=request.getParameter("Address_Updt");
			String city=request.getParameter("City_Updt");
			String state=request.getParameter("State_Updt");
			String country=request.getParameter("Country_Updt");
			String username=request.getParameter("Uname_Updt");
			String password=request.getParameter("Password_Updt");

			FarmUserModel userBean  = new FarmUserModel();
			userBean.setUserId(LoggedUid);
			userBean.setName(name);
			userBean.setMobno(mobno);
			userBean.setEmailId(emailId);
			userBean.setAddress(address);
			userBean.setCity(city);
			userBean.setState(state);
			userBean.setCountry(country);
			userBean.setUserName(username);
			userBean.setPassword(password);
			userBean.setUserRole('U');
			userBean.setActiveStatus('A');
			
			FarmUserService farmSer = new FarmUserService();
			boolean result = farmSer.updateUserInfo(userBean);
			PrintWriter out=response.getWriter();
			if(result==true){
				out.println("User information updated successfully");
			}else{
				out.println("Error: In operation!");
			}
			
			
		}
		/************************get Farm Information ******************************/
		if (reqType.equals("getFarmInfo") || reqType=="getFarmInfo")
		{
			System.out.println("farmid"+FarmId);
			FarmModel FarmObj=new FarmModel();
			FarmObj.setFarmId(FarmId);
			
			
			FarmUserService farmservice=new FarmUserService();
			ArrayList<FarmModel> farmdetailslist =farmservice.getfarmDetailsById(FarmObj);
			System.out.println("list"+farmdetailslist.size());
			
			
			/******create json object and convert it into a string*******************/		    
			Gson gsonObject=new Gson();
			JsonElement jElement=gsonObject.toJsonTree(farmdetailslist);
			JsonArray jArray=jElement.getAsJsonArray();
			
			JsonObject jObj=new JsonObject();
			jObj.add("Jsonfarmdetailslist", jArray);				    
			String strObject=gsonObject.toJson(jObj);
			/******write json object string to response text*******************/
			response.getWriter().write(strObject);		
		}
		
		
/************************Update Farm  Information ******************************/

		
		if (reqType.equals("updateFarmInfo") || reqType=="updateFarmInfo")
		{
			//String farmid=request.getParameter("Farm_Id_Updt");
			String farmname=request.getParameter("Farm_Name_Updt");
			String animaltype=request.getParameter("Animal_Type_Updt");
			String address=request.getParameter("Address_Updt");
			String city=request.getParameter("city_Updt");
			String state=request.getParameter("state_Updt");
			String country=request.getParameter("country_Updt");
			String contactno=request.getParameter("contact_no_Updt");
			

			FarmModel farmBean  = new FarmModel();
			farmBean.setFarmId(FarmId);
			farmBean.setFarmName(farmname);
			farmBean.setAnimalType(animaltype);
			farmBean.setFarmAddress(address);
			farmBean.setCity(city);
			farmBean.setState(state);
			farmBean.setCountry(country);
			farmBean.setContactNo(contactno);
			
			FarmUserService farmSer = new FarmUserService();
			boolean result = farmSer.updateFarmInfo(farmBean);
			PrintWriter out=response.getWriter();
			if(result==true){
				out.println("Farm information updated successfully");
			}else{
				out.println("Error: In operation!");
			}
			
			
		}
		/*if (reqType.equals("DeleteWtInfo") || reqType=="DeleteWtInfo")
		{
			int wtInfoId=Integer.parseInt(request.getParameter("wtInfoId"));
			WeightInfoService wtInfoSerObj = new WeightInfoService();				
			
			 boolean result = wtInfoSerObj.DeleteWtInfo(wtInfoId);	
			
						
			PrintWriter out=response.getWriter();
				if(result==true){
					out.println("Content Delete Succusessfully");
				}else{
					out.println("Something wrong! Content Not Deleted ");
				}
		}*/
	}
}


