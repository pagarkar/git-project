package com.itrix.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.itrix.Model.AnimalModel;
import com.itrix.Model.FarmUserModel;
import com.itrix.Model.GeneralModel;
import com.itrix.Utility.DbUtil;


public class AjaxUtilityDao {

	public ArrayList<AnimalModel> getAnimalNameIDSer(Character userRole,
			int loggedUid, int farmId) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs =null;
		ArrayList<AnimalModel> animalNameIDObjList=new ArrayList<AnimalModel>();	
		conn=DbUtil.getConnection();
		String sql="SELECT animal_id, farm_id, tag_id, name  FROM animal_mast where farm_id="+farmId+" and active_status='A'";		
		
		try {
			conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
			
			while (rs.next()) { 
		    
				AnimalModel animalObj = new AnimalModel();				
				animalObj.setAnimalId(rs.getInt("animal_id"));
				animalObj.setFarmId(rs.getInt("farm_id"));
				animalObj.setTagId(rs.getString("tag_id"));
				animalObj.setAnimalName(rs.getString("name"));			
				animalNameIDObjList.add(animalObj); 
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				ps.close();				
				conn.close();			
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
		return animalNameIDObjList;
	}

	public ArrayList<AnimalModel> getAnimalDetailSer(Character userRole,
			int loggedUid, int farmId, int animalId) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs =null;
		ArrayList<AnimalModel> animalNameIDObjList=new ArrayList<AnimalModel>();	
		conn=DbUtil.getConnection();
		String sql="SELECT animal_id,farm_id, name, gender, tag_id, breed_type, electronic_id, certified_id, active_status FROM animal_mast where farm_id="+farmId+" and animal_id="+animalId+" and  active_status='A'";		
		
		try {
			conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
			
			while (rs.next()) { 
		    
				AnimalModel animalObj = new AnimalModel();
				animalObj.setFarmId(rs.getInt("farm_id"));
				animalObj.setAnimalId(rs.getInt("animal_id"));
				animalObj.setTagId(rs.getString("tag_id"));
				animalObj.setAnimalName(rs.getString("name"));
				String gender = rs.getString("gender");
		
				animalObj.setGender(gender);
				
				animalObj.setBreedType(rs.getString("breed_type"));
			
				String electronicId = rs.getString("electronic_id");
				if( electronicId != null){
					animalObj.setElectronicId(electronicId);
				}else{
					electronicId = "";
					animalObj.setElectronicId(electronicId);
				}	
				
				String certifiedId = rs.getString("certified_id");
				if(certifiedId!= null){
					animalObj.setCertifiedId(certifiedId);
				}else{
					certifiedId = "";
					animalObj.setCertifiedId(certifiedId);
				}
								
				animalNameIDObjList.add(animalObj); 
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				ps.close();				
				conn.close();			
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
		return animalNameIDObjList;
	}

	public boolean updateVitalInfo(AnimalModel animalModel) {
		Connection conn=null;
		PreparedStatement ps=null;
		boolean result = false;
		
		conn=DbUtil.getConnection();
		String sql="update animal_mast set name=?, gender=?, tag_id=?, breed_type=?, electronic_id=?, certified_id=? where animal_id="+animalModel.getAnimalId();		
		
		try {
			conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
			ps.setString(1, animalModel.getAnimalName());
			ps.setString(2, animalModel.getGender());
			ps.setString(3, animalModel.getTagId());
			ps.setString(4, animalModel.getBreedType());
			ps.setString(5, animalModel.getElectronicId());
			ps.setString(6, animalModel.getCertifiedId());
			
            int i=ps.executeUpdate();
			if(i!=0){
				result=true;	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				ps.close();				
				conn.close();			
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
		return result;
	}

	public boolean updateGeneralInfo(GeneralModel generalModel) {
		Connection conn=null;
		PreparedStatement ps=null;
		boolean result = false;
		
		conn=DbUtil.getConnection();
		
		String sql="update general_info set eye_color=?, ear_type=?, horn_type=?, mouth_type=?, tattoos=?, body_color=?, source_type=?, source_details=? where animal_id="+generalModel.getAnimalId();		
		
		try {
			conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
			ps.setString(1, generalModel.getEyeColor());
			ps.setString(2, generalModel.getEarType());
			ps.setString(3, generalModel.getHornType());
			ps.setString(4, generalModel.getMouthType());
			ps.setString(5, generalModel.getTattoos());
			ps.setString(6, generalModel.getBodyColor());
			ps.setString(7, generalModel.getSourceType());
			ps.setString(8, generalModel.getSourceDetails());
			System.out.println("SQL "+ps);
            int i=ps.executeUpdate();
			if(i!=0){
				result=true;	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				ps.close();				
				conn.close();			
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
		return result;
	}

	public boolean checkGeneralInfoExists(int animalId) {
		Connection conn=null;
		PreparedStatement ps=null;
		boolean result = false;
		ResultSet rs = null;
		conn=DbUtil.getConnection();
		
		String sql="select count(animal_Id) as count from general_info where animal_id="+animalId;		
		
		try {
			conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();;
            while (rs.next()) { 
            	int cnt =rs.getInt("count");
            	if(cnt!=0){
            		result=true;
            	}
            }
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				ps.close();				
				conn.close();			
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
		return result;
	}

	public boolean insertGeneralInfo(GeneralModel generalModel) {
		Connection conn=null;
		boolean result = false;		
		PreparedStatement ps=null;
		try
		{
			conn=DbUtil.getConnection();
			String sql="insert into general_info(general_id, animal_id, eye_color, ear_type, horn_type, mouth_type, tattoos, body_color, source_type, source_details) values(?,?,?,?,?,?,?,?,?,?)";		
			
			ps=conn.prepareStatement(sql);
				
				ps.setInt(1,0);
				ps.setInt(2, generalModel.getAnimalId());
				ps.setString(3, generalModel.getEyeColor());
				ps.setString(4, generalModel.getEarType());
				ps.setString(5, generalModel.getHornType());
				ps.setString(6, generalModel.getMouthType());
				ps.setString(7, generalModel.getTattoos());
				ps.setString(8, generalModel.getBodyColor());
				ps.setString(9, generalModel.getSourceType());
				ps.setString(10, generalModel.getSourceDetails());
				int status = ps.executeUpdate();
				if(status!=0){
					result=true;
				}else{
					result=false;
					
				}			  
		}
		catch(SQLException se)
		{
			se.printStackTrace();
			
		}
		finally {
			try {
				ps.close();
				conn.close();
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
		
		return result;
		
	}

	public ArrayList<GeneralModel> getGeneralInfoDao(Character userRole,
			int loggedUid, int farmId, int animalId) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs =null;
		ArrayList<GeneralModel> generalInfoObjList=new ArrayList<GeneralModel>();	
		conn=DbUtil.getConnection();
		String sql="SELECT general_id,animal_id, eye_color, ear_type, horn_type, mouth_type, tattoos, body_color, source_type, source_details FROM general_info WHERE animal_id="+animalId;
		try {
			conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
			
			while (rs.next()) { 
		    
				GeneralModel generalObj = new GeneralModel();
				generalObj.setGeneralId(rs.getInt("general_id"));
				generalObj.setAnimalId(rs.getInt("animal_id"));
				generalObj.setEyeColor(rs.getString("eye_color"));		
				generalObj.setEarType(rs.getString("ear_type"));
				generalObj.setHornType(rs.getString("horn_type"));
				generalObj.setMouthType(rs.getString("mouth_type"));
				generalObj.setTattoos(rs.getString("tattoos"));
				generalObj.setBodyColor(rs.getString("body_color"));
				generalObj.setSourceType(rs.getString("source_type"));				
				generalObj.setSourceDetails(rs.getString("source_details"));
				generalInfoObjList.add(generalObj); 
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				ps.close();				
				conn.close();			
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
		return generalInfoObjList;
	}

	
	/****************************************ajax dao for user****************************************************/
	public boolean checkUserInfoExists(int userId) {
		Connection conn=null;
		PreparedStatement ps=null;
		boolean result = false;
		ResultSet rs = null;
		conn=DbUtil.getConnection();
		
		String sql="select count(user_Id) as count from user_mast where user_id=?"+userId;		
		
		try {
			conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();;
            while (rs.next()) { 
            	int cnt =rs.getInt("count");
            	if(cnt!=0){
            		result=true;
            	}
            }
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				ps.close();				
				conn.close();			
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}

		
		return result;
	}

	public boolean updateUserInfo(FarmUserModel userBean) {
		Connection conn=null;
		PreparedStatement ps=null;
		boolean result = false;
		
		conn=DbUtil.getConnection();
		System.out.println("connected");
		String sql="update user_mast set name=?, mobile=?, email_id=?, address=?, city=?, state=?,country=?,user_name=?,password=?,user_role=?,active_status=? where user_id="+userBean.getUserId();		
		try {
			conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
			ps.setString(1, userBean.getName());
			ps.setString(2, userBean.getMobno());
			ps.setString(3, userBean.getEmailId());
			ps.setString(4, userBean.getAddress());
			ps.setString(5, userBean.getCity());
			ps.setString(6, userBean.getState());
			ps.setString(7, userBean.getCountry());
			ps.setString(8, userBean.getUserName());
			ps.setString(9, userBean.getPassword());
			ps.setString(10, String.valueOf(userBean.getUserRole()));
			ps.setString(11, String.valueOf(userBean.getActiveStatus()));
			ps.setInt(12, userBean.getUserId());
			System.out.println("SQL "+ps);

            int i=ps.executeUpdate();
			if(i!=0){
				result=true;	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				ps.close();				
				conn.close();			
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
	
		
		return result ;
	}

	public boolean insertUserInfo(FarmUserModel userBean) {
		
		Connection conn=null;
		boolean result = false;		
		PreparedStatement ps=null;
		try
		{
			conn=DbUtil.getConnection();
			String sql="insert into user_mast(user_id, name, mobile, email_id, address, city, state, country,user_name, password) values(?,?,?,?,?,?,?,?,?,?)";		
			
			ps=conn.prepareStatement(sql);
				
				ps.setInt(1,0);
				ps.setString(2, userBean.getName());
				ps.setString(3, userBean.getMobno());
				ps.setString(4, userBean.getEmailId());
				ps.setString(5, userBean.getAddress());
				ps.setString(6, userBean.getCity());
				ps.setString(7, userBean.getState());
				ps.setString(8, userBean.getCountry());
				ps.setString(9, userBean.getUserName());
				ps.setString(10, userBean.getPassword());
				
				int status = ps.executeUpdate();
				if(status!=0){
					result=true;
				}else{
					result=false;
					
				}			  
		}
		catch(SQLException se)
		{
			se.printStackTrace();
			
		}
		finally {
			try {
				ps.close();
				conn.close();
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
		

		return result;
	}


}
