package com.itrix.Service;

import java.util.ArrayList;

import com.itrix.Dao.WeightInfoDao;
import com.itrix.Model.WeightModel;

public class WeightInfoService {

	public boolean insertWtRecord(Character userRole, int loggedUid,
			WeightModel wtObj) {
		boolean result = false;
		WeightInfoDao wtInfoDaoObj = new WeightInfoDao();
		result = wtInfoDaoObj.insertWtRecord(userRole, loggedUid, wtObj);
		return result;
	}

	public ArrayList<WeightModel> getAnimalWtInfo(Character userRole,
			int loggedUid, int farmId, int animalId) {
		ArrayList<WeightModel> wtInfoList=new ArrayList<WeightModel>();	
		WeightInfoDao wtInfoDaoObj = new WeightInfoDao();
		wtInfoList = wtInfoDaoObj.getAnimalWtInfo(userRole,loggedUid, farmId, animalId);
		return wtInfoList;
	}

	public boolean DeleteWtInfo(int wtInfoId) {
		WeightInfoDao wtInfoDaoObj = new WeightInfoDao();
		boolean result = wtInfoDaoObj.DeleteWtInfo(wtInfoId);
		return result;
	
	}

	public ArrayList<WeightModel> getAnimalWtInfoUpdt(Character userRole,
			int loggedUid, int farmId, int wtInfoIdInt) {
		ArrayList<WeightModel> wtInfoList=new ArrayList<WeightModel>();	
		WeightInfoDao wtInfoDaoObj = new WeightInfoDao();
		wtInfoList = wtInfoDaoObj.getAnimalWtInfoUpdt(userRole,loggedUid, farmId, wtInfoIdInt);
		return wtInfoList;
	}

	public boolean updateWtRecord(Character userRole, int loggedUid,
			WeightModel wtObj) {
		boolean result = false;
		WeightInfoDao wtInfoDaoObj = new WeightInfoDao();
		result = wtInfoDaoObj.updateWtRecord(userRole, loggedUid, wtObj);
		return result;
	}

}
