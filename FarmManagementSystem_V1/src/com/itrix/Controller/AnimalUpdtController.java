package com.itrix.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ResourceBundle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itrix.Model.AnimalModel;
import com.itrix.Service.AnimalService;

/**
 * Servlet implementation class AnimalUpdtController
 */
@WebServlet("/AnimalUpdtController")
public class AnimalUpdtController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String animalIdUpdtStr = request.getParameter("animalIdUpdt");
		int animalIdUpdt = Integer.parseInt(animalIdUpdtStr);
		HttpSession htp = request.getSession();
		int farmId = (Integer) htp.getAttribute("FarmId");
		String tagId = request.getParameter("tagIdUpdt");
		String animalName = request.getParameter("animalNameUpdt");
		String breedType = request.getParameter("breedTypeUpdt");
		String gender = request.getParameter("genderTypeUpdt");

		AnimalModel animalModel = new AnimalModel();
		animalModel.setAnimalId(animalIdUpdt);
		animalModel.setTagId(tagId);
		animalModel.setAnimalName(animalName);
		animalModel.setBreedType(breedType);
		animalModel.setGender(gender);
		int result = 0;
		AnimalService serviceObj = new AnimalService();
		result = serviceObj.updateAnimal(animalModel);

		ResourceBundle rb = ResourceBundle.getBundle("ApplicationMessages");
		if (result > 0) {
			String Msg = rb.getString("AddAnimalSuccessMsg");
			htp.setAttribute("successMsg", Msg);
			response.sendRedirect("JSP/addAnimalMast.jsp");
		} else {
			String Msg = rb.getString("AddAnimalFailureMsg");
			htp.setAttribute("failureMsg", Msg);
			response.sendRedirect("JSP/viewAnimalMast.jsp");

		}

	}

}
