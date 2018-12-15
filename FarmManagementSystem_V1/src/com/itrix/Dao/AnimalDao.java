package com.itrix.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import com.itrix.Model.AnimalModel;
import com.itrix.Utility.DbUtil;


public class AnimalDao {
			
	ResourceBundle tableName=ResourceBundle.getBundle("dbTables");
	ResourceBundle animalMastTable=ResourceBundle.getBundle("animal_mast");
	
	public boolean insertAnimal(ArrayList<AnimalModel> AddAnimalModelList)
	{
		Connection conn=null;
		boolean result = false;		
		PreparedStatement ps=null;
		try
		{
			conn=DbUtil.getConnection();
			String sql="insert into animal_mast(animal_id,farm_id,tag_id,name,breed_type,gender) values(?,?,?,?,?,?)";		
			
			ps=conn.prepareStatement(sql);
			for (AnimalModel animalModel : AddAnimalModelList) {
				
				ps.setInt(1,0);
				ps.setInt(2,animalModel.getFarmId());
				ps.setString(3,animalModel.getTagId());
				ps.setString(4,animalModel.getAnimalName());
				ps.setString(5, animalModel.getBreedType());
				ps.setString(6,animalModel.getGender());
				int status = ps.executeUpdate();
				if(status!=0){
					result=true;
				}else{
					result=false;
					
				}
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
	
	/********************* Dao to Delete Animal Details *******************/

	public int deleteAnimal(int id) {
		
		int result = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = DbUtil.getConnection();
			String sql = "delete from animal_mast where animal_id=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			result = ps.executeUpdate();

		} catch (SQLException se) {
			se.printStackTrace();

		} finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;

	}

	/******************* Dao to update Animal details *****************/
	public int updateAnimal(AnimalModel animalModel) {
		int result = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			/************* get db connection ***************/

			conn = DbUtil.getConnection();
			String sql = "update animal_mast set name=?,gender=?,tag_id=?,breed_type=? where animal_id=?";
			ps = conn.prepareStatement(sql);

			{
				//ps.setInt(1, animalModel.getFarmId());
				ps.setString(1, animalModel.getAnimalName());
				ps.setString(2, animalModel.getGender());
				ps.setString(3, animalModel.getTagId());
				ps.setString(4, animalModel.getBreedType());
				ps.setInt(5, animalModel.getAnimalId());

				result = ps.executeUpdate();

			}

		} catch (SQLException se) {
			se.printStackTrace();

		} finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;

	}

	/************** dao to get Animal Details by id ************/

	public AnimalModel getAnimalModelById(int id) {
		AnimalModel animalModel = new AnimalModel();
		int result = 0; 
		Connection con = null;
		PreparedStatement ps=null;

		try {

			/********* get db connection *********/
			con = DbUtil.getConnection();
			String sql="select * from animal_mast where animal_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				animalModel.setAnimalId(rs.getInt(1));
				animalModel.setFarmId(rs.getInt(2));
				animalModel.setAnimalName(rs.getString(3));
				animalModel.setGender(rs.getString(4));
				animalModel.setTagId(rs.getString(5));
				animalModel.setBreedType(rs.getString(6));

			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return animalModel;

	}

	/********* Dao to view Animal Details ****************/

	public List<AnimalModel> getAnimalModelDetails() {
		Connection conn = null;
		PreparedStatement ps = null;
		List<AnimalModel> list = new ArrayList<AnimalModel>();
		try {
			/******* get db connection **************/
			conn = DbUtil.getConnection();
			String sql = "select * from animal_mast";
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				AnimalModel animalModel = new AnimalModel();
				animalModel.setAnimalId(rs.getInt(1));
				animalModel.setFarmId(rs.getInt(2));
				animalModel.setAnimalName(rs.getString(3));
				animalModel.setGender(rs.getString(4));
				animalModel.setTagId(rs.getString(5));
				animalModel.setBreedType(rs.getString(6));

				list.add(animalModel);

			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {

				conn.close();
				ps.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return list;

	}

}
