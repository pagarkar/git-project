package com.itrix.Service;

import java.util.ArrayList;
import java.util.List;

import com.itrix.Dao.AnimalDao;
import com.itrix.Model.AnimalModel;

public class AnimalService {

	public boolean insertAnimal(ArrayList<AnimalModel> addAnimalModelList) {
		
		boolean status=false;
		try{			
			AnimalDao animalDaoObj = new AnimalDao();
			status = animalDaoObj.insertAnimal(addAnimalModelList);
				}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public int deleteAnimal(int id) {
		int result = 0;
		try {
			AnimalDao animalDaoObj = new AnimalDao();
			result = animalDaoObj.deleteAnimal(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int updateAnimal(AnimalModel animalModel) {
		int result = 0;
		try {
			AnimalDao animalDaoObj = new AnimalDao();
			result = animalDaoObj.updateAnimal(animalModel);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	public AnimalModel getAnimalModelById(int id) {
		int result = 0;
		AnimalModel animalModel = new AnimalModel();
		try {
			AnimalDao animalDaoObj = new AnimalDao();
			animalModel = animalDaoObj.getAnimalModelById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return animalModel;

	}

	public List<AnimalModel> getAnimalModelDetails() {
		List<AnimalModel> list = new ArrayList<AnimalModel>();
		try {
			AnimalDao animalDaoObj = new AnimalDao();
			list = animalDaoObj.getAnimalModelDetails();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

}
