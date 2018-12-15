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

import com.itrix.Model.WeightModel;

import com.itrix.Service.WeightInfoService;
import com.itrix.Utility.Conversion;


/**
 * Servlet implementation class WeightInfoController
 */
@WebServlet("/WeightInfoController")
public class WeightInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WeightInfoController() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		
		/************************Insert animal weight record******************************/
		if (reqType.equals("insertWeightRecord") || reqType=="insertWeightRecord")
		{
		
			boolean result = false;
			try
			{	
				String animalIdStr = request.getParameter("animalId");
				int animalId = conversion.convertStrToInt(animalIdStr);	
				String weightStr = request.getParameter("animalWeight");
				double weight = conversion.convertStrToDouble(weightStr);
				String wtDateStr = request.getParameter("weightDate");
				java.sql.Date wtDate=conversion.convertStrToDate(wtDateStr);
				String wtNote = request.getParameter("wtNote");
				
				WeightModel wtObj = new WeightModel();
				wtObj.setAnimalId(animalId);
				wtObj.setFarmId(FarmId);
				wtObj.setWeight(weight);
				wtObj.setWtDate(wtDate);
				wtObj.setNote(wtNote);
				WeightInfoService addRecordSer = new WeightInfoService();						
				result = addRecordSer.insertWtRecord(UserRole,LoggedUid, wtObj);	
				PrintWriter out = response.getWriter();
				if (result) {
					out.println("Record Inserted Sucessfully");

				} else {
					out.println("Error in operation!");
				}					
					
			}	
			catch (Exception e)
			{
				e.printStackTrace();
			} 		
		 }
		/************************Fetch animal weight record******************************/
		if (reqType.equals("getAnimalWtInfo") || reqType=="getAnimalWtInfo")
		{
			ArrayList<WeightModel> wtInfoList=new ArrayList<WeightModel>();	
			boolean result = false;
			try
			{	
				String animalIdStr = request.getParameter("animalId");
				int animalId = conversion.convertStrToInt(animalIdStr);	
				WeightInfoService fetchWtInfoListSerObj = new WeightInfoService();									
				wtInfoList = fetchWtInfoListSerObj.getAnimalWtInfo(UserRole,LoggedUid, FarmId, animalId);	
		        // System.out.println("animalNameIDObjList "+animalDetailObjList.size());
				
			/******create json object and convert it into a string*******************/		    
			Gson gsonObject=new Gson();
			JsonElement jElement=gsonObject.toJsonTree(wtInfoList);
			JsonArray jArray=jElement.getAsJsonArray();
			
			JsonObject jObj=new JsonObject();
			jObj.add("JsonAnimalWtInfoObjList", jArray);				    
			String strObject=gsonObject.toJson(jObj);
			/******write json object string to response text*******************/
			response.getWriter().write(strObject);					
					
			}	
			catch (Exception e)
			{
				e.printStackTrace();
			} 		
		 }
		/************************Fetch animal weight record******************************/
		if (reqType.equals("getAnimalWtInfoUpdt") || reqType=="getAnimalWtInfoUpdt")
		{
			ArrayList<WeightModel> wtInfoList=new ArrayList<WeightModel>();	
			boolean result = false;
			try
			{	
				String wtInfoId = request.getParameter("wtInfoId");
				int wtInfoIdInt = conversion.convertStrToInt(wtInfoId);	
				WeightInfoService fetchWtInfoListSerObj = new WeightInfoService();									
				wtInfoList = fetchWtInfoListSerObj.getAnimalWtInfoUpdt(UserRole,LoggedUid, FarmId, wtInfoIdInt);	
		        // System.out.println("animalNameIDObjList "+animalDetailObjList.size());
				
			/******create json object and convert it into a string*******************/		    
			Gson gsonObject=new Gson();
			JsonElement jElement=gsonObject.toJsonTree(wtInfoList);
			JsonArray jArray=jElement.getAsJsonArray();
			
			JsonObject jObj=new JsonObject();
			jObj.add("JsonWtInfoUpdtObjList", jArray);				    
			String strObject=gsonObject.toJson(jObj);
			/******write json object string to response text*******************/
			response.getWriter().write(strObject);					
					
			}	
			catch (Exception e)
			{
				e.printStackTrace();
			} 		
		 }
		/************************Update animal weight record******************************/
		if (reqType.equals("update") || reqType=="update")
		{
		
			boolean result = false;
			try
			{	
				String wtIdUpdtStr = request.getParameter("wtId_Updt");
				int wtId = conversion.convertStrToInt(wtIdUpdtStr);	
				String animalWeightStr = request.getParameter("animalWeight_Updt");
				double weight = conversion.convertStrToDouble(animalWeightStr);
				String wtDateStr = request.getParameter("weightDate_Updt");
				java.sql.Date wtDate=conversion.convertStrToDate(wtDateStr);
				String wtNote = request.getParameter("wtNote_Updt");
				
				WeightModel wtObj = new WeightModel();
				wtObj.setWtId(wtId);
				wtObj.setFarmId(FarmId);
				wtObj.setWeight(weight);
				wtObj.setWtDate(wtDate);
				wtObj.setNote(wtNote);
				WeightInfoService weightSer = new WeightInfoService();						
				result = weightSer.updateWtRecord(UserRole,LoggedUid, wtObj);	
				PrintWriter out = response.getWriter();
				if (result) {
					out.println("Record Updated Sucessfully");

				} else {
					out.println("Error in operation!");
				}					
					
			}	
			catch (Exception e)
			{
				e.printStackTrace();
			} 		
		 }
		/************************del weight record******************************/
		if (reqType.equals("DeleteWtInfo") || reqType=="DeleteWtInfo")
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
		}
		
	}
	
}
