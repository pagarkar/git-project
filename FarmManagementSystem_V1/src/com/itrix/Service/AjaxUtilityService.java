package com.itrix.Service;

import java.util.ArrayList;

import com.itrix.Dao.AjaxUtilityDao;
import com.itrix.Model.AnimalModel;
import com.itrix.Model.FarmUserModel;
import com.itrix.Model.GeneralModel;

public class AjaxUtilityService {

	public ArrayList<AnimalModel> getAnimalNameIDSer(Character userRole,
			int loggedUid, int farmId) {
		ArrayList<AnimalModel> animalNameIDObjList=null;	
		try {
			AjaxUtilityDao daoObj =  new AjaxUtilityDao();
			animalNameIDObjList = daoObj.getAnimalNameIDSer( userRole,loggedUid,farmId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return animalNameIDObjList;
	}

	public ArrayList<AnimalModel> getAnimalDetailSer(Character userRole,
			int loggedUid, int farmId, int animalId) {
		ArrayList<AnimalModel> animalDetailObjList=null;	
		try {
			AjaxUtilityDao daoObj =  new AjaxUtilityDao();
			animalDetailObjList = daoObj.getAnimalDetailSer( userRole,loggedUid,farmId,animalId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return animalDetailObjList;
	}

	public boolean updateVitalInfo(AnimalModel animalModel) {
		AjaxUtilityDao utilDao = new AjaxUtilityDao();
		boolean result = utilDao.updateVitalInfo(animalModel);
		return result;
	}

	public boolean updateGeneralInfo(GeneralModel generalModel) {
		AjaxUtilityDao utilDao = new AjaxUtilityDao();
		int animalId = generalModel.getAnimalId();
		boolean result = false;
		boolean chkResult = utilDao.checkGeneralInfoExists(animalId);
		if(chkResult){
			//Upadte the animal general information.
			 result = utilDao.updateGeneralInfo(generalModel);
		}else{
			//Insert the general information
			result = utilDao.insertGeneralInfo(generalModel);
		}
		
		return result;
	}

	public ArrayList<GeneralModel> getGeneralInfoSer(Character userRole,
			int loggedUid, int farmId, int animalId) {
		ArrayList<GeneralModel> generalInfoObjList=null;	
		try {
			AjaxUtilityDao daoObj =  new AjaxUtilityDao();
			generalInfoObjList = daoObj.getGeneralInfoDao( userRole,loggedUid,farmId,animalId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return generalInfoObjList;
	}

	/*****************************************update user info ********************************************/
	public boolean updateUserlInfo(FarmUserModel userBean) {
		AjaxUtilityDao utilDao = new AjaxUtilityDao();
		int userId=userBean.getUserId();
		boolean result=false;
		boolean chkResult = utilDao.checkUserInfoExists(userId);
		if(chkResult){
			//Upadte the user information.
			 result = utilDao.updateUserInfo(userBean);
		}else{
			//Insert the user information
			result = utilDao.insertUserInfo(userBean);
		}
		

		return false;
	}

}
