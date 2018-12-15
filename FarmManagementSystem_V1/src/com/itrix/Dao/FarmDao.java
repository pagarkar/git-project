package com.itrix.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.itrix.Model.FarmModel;
import com.itrix.Model.FarmUserModel;
import com.itrix.Utility.DbUtil;


public class FarmDao {

	public boolean farmInsert(FarmModel farmObj) {
		Connection con = null;
		boolean result = false;
		PreparedStatement ps=null;
		
		try {
			/*********************************** get db connection ***********************************************/
			con = DbUtil.getConnection();
            String sql = "insert into farm_mast(farm_id,user_id,farm_name,animal_type)  values(?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, 0);
			ps.setInt(2, farmObj.getUserId());
			ps.setString(3, farmObj.getFarmName());
			ps.setString(4, farmObj.getAnimalType());				
			int i = ps.executeUpdate();
			if(i!=0){
				result=true;
			}

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {

			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		return result;
	}

	public FarmModel getfarmDetails(int userId) {
		Connection conn = null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		FarmModel FarmObj = null;
		try {
			conn = DbUtil.getConnection();
            String sql = "SELECT farm_id,user_id,farm_name,animal_type,address,city,state,country,contact_no,website_url,description FROM farm_mast WHERE user_id="+userId;
            conn=DbUtil.getConnection();
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			
			while (rs.next()) { 
				FarmObj = new FarmModel();
				FarmObj.setFarmId(rs.getInt("farm_id"));
				FarmObj.setUserId(rs.getInt("user_id"));
				FarmObj.setFarmName(rs.getString("farm_name"));
				FarmObj.setAnimalType(rs.getString("animal_type"));
				FarmObj.setFarmAddress(rs.getString("address"));
				FarmObj.setCity(rs.getString("city"));
				FarmObj.setState(rs.getString("state"));
				FarmObj.setCountry(rs.getString("country"));
				FarmObj.setContactNo(rs.getString("contact_no"));
				FarmObj.setWebsiteUrl(rs.getString("website_url"));
				FarmObj.setDescription(rs.getString("description"));
			}	
		}catch (SQLException ex) {
			ex.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {

			try {
				ps.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				
			}
		}
		return FarmObj;
	}

	public ArrayList<FarmModel> getfarmDetailsById(FarmModel farmObj) {
		Connection conn = null;
		PreparedStatement ps=null;
		ArrayList<FarmModel> farmList=new ArrayList<FarmModel>();
		ResultSet rs;
		try {
			conn = DbUtil.getConnection();
			int farmId=farmObj.getFarmId();
			String query = "select * from farm_mast where farm_id=?";

			ps=conn.prepareStatement(query);
			ps.setInt(1,farmId);
			
			rs=ps.executeQuery();
			while(rs.next()){
				FarmModel farmListBean=new FarmModel();
				farmListBean.setFarmId(rs.getInt("farm_id"));
				farmListBean.setFarmName(rs.getString("farm_name"));
				farmListBean.setAnimalType(rs.getString("animal_type"));
				farmListBean.setFarmAddress(rs.getString("address"));
				farmListBean.setCity(rs.getString("city"));
				farmListBean.setState(rs.getString("state"));
				farmListBean.setCountry(rs.getString("country"));
				farmListBean.setContactNo(rs.getString("contact_no"));
				
				farmList.add(farmListBean);
			}
			
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {

			try {
				ps.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				
			}
		}
	
		return farmList;
		}

	public boolean updateFarmInfo(FarmModel farmBean) {
		
			boolean result = false;

			Connection con = null;
			PreparedStatement ps=null;

			try {
				/*********************************** * * get db connection ***********************************************/

				con = DbUtil.getConnection();
				ps = con.prepareStatement("update farm_mast set farm_name=?,animal_type=?,address=?,city=?,state=?,country=?,contact_no=? where farm_id = ?");


				//ps.setInt(1, farmBean.getUserId());
				ps.setString(1,farmBean.getFarmName());
				ps.setString(2, farmBean.getAnimalType());
				ps.setString(3, farmBean.getFarmAddress());
				ps.setString(4, farmBean.getCity());
				ps.setString(5, farmBean.getState());
				ps.setString(6, farmBean.getCountry());
				ps.setString(7, farmBean.getContactNo());
				ps.setInt(8, farmBean.getFarmId());


				 int i=ps.executeUpdate();
					if(i!=0){
						result=true;	
					}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					
					ps.close();				
					con.close();			
					
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				
			}	
		
		
		return result;
	}

}

