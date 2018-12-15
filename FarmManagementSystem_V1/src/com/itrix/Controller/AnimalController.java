package com.itrix.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itrix.Dao.AnimalDao;
import com.itrix.Model.AnimalModel;
import com.itrix.Service.AnimalService;

/**
 * Servlet implementation class AnimalMastController
 */
@WebServlet("/AnimalController")
public class AnimalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnimalController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		    HttpSession htp = request.getSession();
			int farmId =  (Integer)htp.getAttribute("FarmId");		
			String[] tag_id=request.getParameterValues("tagId[]");
			String[] name=request.getParameterValues("animalName[]");
			String[] breed_type=request.getParameterValues("breedType[]");
			String[] gender=request.getParameterValues("genderType[]");
			
			ArrayList<AnimalModel> AddAnimalModelList=new ArrayList<AnimalModel>();
			AnimalModel AddAnimalModel=null;
			
			 for(int i=0; i < tag_id.length; i++)
			 {
				 AddAnimalModel=new AnimalModel();
				 String tag_idTxt=tag_id[i];
				 String nameTxt=name[i];
				 String breed_typeTxt=breed_type[i];
				 String genderTxt=gender[i];
						
				 AddAnimalModel.setTagId(tag_idTxt);
				 AddAnimalModel.setAnimalName(nameTxt);
				 AddAnimalModel.setBreedType(breed_typeTxt);
				 AddAnimalModel.setGender(genderTxt);
				 AddAnimalModel.setFarmId(farmId);
				 AddAnimalModelList.add(AddAnimalModel);
				
			 }
			  
				 AnimalService serviceObj = new AnimalService();	
				 boolean result=serviceObj.insertAnimal(AddAnimalModelList);
				
				 ResourceBundle rb = ResourceBundle.getBundle("ApplicationMessages");
				 if(result){						  
				    String Msg =rb.getString("AddAnimalSuccessMsg");
				   	htp.setAttribute("successMsg",Msg);
					response.sendRedirect("JSP/addAnimalMast.jsp");
				 }else
					{								
					 	String Msg =rb.getString("AddAnimalFailureMsg");
						htp.setAttribute("failureMsg",Msg);				
						response.sendRedirect("JSP/addAnimalMast.jsp");
							
					}
			  
	}

	}
