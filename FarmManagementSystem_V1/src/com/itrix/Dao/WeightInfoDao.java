package com.itrix.Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.itrix.Model.AnimalModel;
import com.itrix.Model.WeightModel;
import com.itrix.Utility.DbUtil;

public class WeightInfoDao {

	public boolean insertWtRecord(Character userRole, int loggedUid,
			WeightModel wtObj) {
		Connection conn=null;
		boolean result = false;		
		PreparedStatement ps=null;
		try
		{
			conn=DbUtil.getConnection();
			String sql="insert into weight_info(wt_id, farm_id, animal_id, weight, wt_date, note) values(?,?,?,?,?,?)";		
			
			ps=conn.prepareStatement(sql);
			
				ps.setInt(1,0);
				ps.setInt(2,wtObj.getFarmId());
				ps.setInt(3,wtObj.getAnimalId());
				ps.setDouble(4,wtObj.getWeight());
				ps.setDate(5, (Date) wtObj.getWtDate());
				ps.setString(6,wtObj.getNote());
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

	public ArrayList<WeightModel> getAnimalWtInfo(Character userRole,
			int loggedUid, int farmId, int animalId) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs =null;
		ArrayList<WeightModel> WeightModelList=new ArrayList<WeightModel>();	
		conn=DbUtil.getConnection();
		String sql="SELECT wt_id, farm_id, animal_id, weight, wt_date, note FROM weight_info WHERE animal_id="+animalId;		
		
		try {
			conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
			
			while (rs.next()) { 
		    
				WeightModel weightInfoObj = new WeightModel();
				weightInfoObj.setFarmId(rs.getInt("farm_id"));
				weightInfoObj.setAnimalId(rs.getInt("animal_id"));
				weightInfoObj.setWtId(rs.getInt("wt_id"));
				weightInfoObj.setWeight(rs.getDouble("weight"));				
				weightInfoObj.setWtDate(rs.getDate("wt_date"));
				weightInfoObj.setNote(rs.getString("note"));
				WeightModelList.add(weightInfoObj); 
			
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
		return WeightModelList;
	}

	public boolean DeleteWtInfo(int wtInfoId) {
		
		boolean result = false;
		 PreparedStatement ps=null;
		 Connection conn=null;
	    try {   
	    	 final String sql="DELETE FROM weight_info WHERE wt_id="+wtInfoId;
			    conn=DbUtil.getConnection();
				ps=conn.prepareStatement(sql);
				System.out.println("sql "+sql);	
				 int i=ps.executeUpdate();  
				 if(i!=0){
					 result=true; 
				 }
			}  
	   catch (SQLException e) { 
		   e.printStackTrace();
	       }       
	       
	   catch(Exception e) {
			e.getStackTrace();
		 }finally
			{
				if(conn!=null)
				{
					try 
					{
						ps.close();
						conn.close();
					} 
					catch (SQLException s) 
					{
						s.printStackTrace();
					}
				}
			}		
	  
	  return result;
}

	public ArrayList<WeightModel> getAnimalWtInfoUpdt(Character userRole,
			int loggedUid, int farmId, int wtInfoIdInt) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs =null;
		ArrayList<WeightModel> WeightModelList=new ArrayList<WeightModel>();	
		conn=DbUtil.getConnection();
		String sql="SELECT wt_id, farm_id, animal_id, weight, wt_date, note FROM weight_info WHERE wt_id="+wtInfoIdInt;		
		
		try {
			conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
			
			while (rs.next()) { 
		    
				WeightModel weightInfoObj = new WeightModel();
				weightInfoObj.setFarmId(rs.getInt("farm_id"));
				weightInfoObj.setAnimalId(rs.getInt("animal_id"));
				weightInfoObj.setWtId(rs.getInt("wt_id"));
				weightInfoObj.setWeight(rs.getDouble("weight"));				
				weightInfoObj.setWtDate(rs.getDate("wt_date"));
				weightInfoObj.setNote(rs.getString("note"));
				WeightModelList.add(weightInfoObj); 
			
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
		return WeightModelList;
	}

	public boolean updateWtRecord(Character userRole, int loggedUid,
			WeightModel wtObj) {
		Connection conn=null;
		boolean result = false;		
		PreparedStatement ps=null;
		try
		{
			conn=DbUtil.getConnection();
			String sql="update weight_info set  weight=?, wt_date=?, note=? where wt_id=?";		
			ps=conn.prepareStatement(sql);
				
				ps.setDouble(1,wtObj.getWeight());
				ps.setDate(2, (Date) wtObj.getWtDate());
				ps.setString(3,wtObj.getNote());
				ps.setInt(4, wtObj.getWtId());
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
