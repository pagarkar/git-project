package com.itrix.Service;

import java.util.ArrayList;

import com.itrix.Dao.FarmDao;
import com.itrix.Dao.FarmUserDao;
import com.itrix.Model.FarmModel;
import com.itrix.Model.FarmUserModel;





public class FarmUserService {
	public boolean farmUserInsert(FarmUserModel userObj, FarmModel farmObj) {
		boolean result = false;
		try {
			FarmUserDao farmUserDao = new FarmUserDao();
			int last_inserted_user_id =farmUserDao.farmUserInsert(userObj);
			if(last_inserted_user_id!=0){
				FarmDao farmDaoObj = new FarmDao();
				farmObj.setUserId(last_inserted_user_id);
				result = farmDaoObj.farmInsert(farmObj);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public boolean checkUserPass(FarmUserModel userBean) {
		boolean resultflag=false;
		try {
			FarmUserDao loginDao=new FarmUserDao();
			resultflag=loginDao.checkUserPass(userBean);
		} catch (Exception e)
		{	
			e.printStackTrace();
		}
		return resultflag;
	}

	public ArrayList<FarmUserModel> getUserDetails(FarmUserModel userBean) {
		ArrayList<FarmUserModel> userList=null;
		try {
			FarmUserDao loginDao=new FarmUserDao();
			userList=loginDao.getUserDetails(userBean);
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return userList;
	}
	public ArrayList<FarmUserModel> getUserDetailsByIuserID(FarmUserModel userBean) {
		ArrayList<FarmUserModel> userList=null;
		try {
			FarmUserDao loginDao=new FarmUserDao();
			userList=loginDao.getUserDetailsByIuserID(userBean);
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return userList;
	}
	public FarmModel getfarmDetails(int userId) {
		FarmModel farmObj = null;
		try {
			FarmDao farmDaoObj = new FarmDao();
			farmObj = farmDaoObj.getfarmDetails(userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return farmObj;
	}

	public boolean updateUserInfo(FarmUserModel userBean) {
		boolean status = false;
		try {
			FarmUserDao farmUserDao = new FarmUserDao();
			status =farmUserDao.updateUserInfo(userBean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
		
	}

	public ArrayList<FarmModel> getfarmDetailsById(FarmModel FarmObj) {
		ArrayList<FarmModel> farmList=null;
		
		try {
			FarmDao farmdaoObj=new FarmDao();
			farmList=farmdaoObj.getfarmDetailsById(FarmObj);
			
			
			
			
			
			
		} catch (Exception e) {
		}
		
		return farmList;
	}

	public boolean updateFarmInfo(FarmModel farmBean) {
		boolean status = false;
		try {
			FarmDao farmDao = new FarmDao();
			status =farmDao.updateFarmInfo(farmBean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
		
		

	}
}
