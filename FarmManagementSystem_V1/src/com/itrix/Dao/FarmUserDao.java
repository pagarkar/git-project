package com.itrix.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;
import com.itrix.Model.FarmUserModel;
import com.itrix.Utility.DbUtil;
import com.mysql.jdbc.Statement;


public class FarmUserDao {

	ResourceBundle tablNames = ResourceBundle.getBundle("dbTables");
	ResourceBundle UserMastcolumnNames = ResourceBundle.getBundle("user_mast");

	/***********************	 * * get table and column names from propeties file	 *************************/

	String UserMast_tbl = tablNames.getString("user_mast");

	String user_id_col = UserMastcolumnNames.getString("user_id");
	String name_col = UserMastcolumnNames.getString("name");
	String mobile_col = UserMastcolumnNames.getString("mobile");
	String email_id_col = UserMastcolumnNames.getString("email_id");
	String address_col = UserMastcolumnNames.getString("address");
	String city_col = UserMastcolumnNames.getString("city");
	String state_col = UserMastcolumnNames.getString("state");
	String country_col = UserMastcolumnNames.getString("country");
	String user_name_col = UserMastcolumnNames.getString("user_name");
	String password_col = UserMastcolumnNames.getString("password");
	String user_role_col = UserMastcolumnNames.getString("user_role");
	String user_type_col = UserMastcolumnNames.getString("user_type");
	String active_status_col = UserMastcolumnNames.getString("active_status");
	String login_status_col = UserMastcolumnNames.getString("login_status");
	String created_date_col = UserMastcolumnNames.getString("created_date");
	String updated_date_col = UserMastcolumnNames.getString("updated_date");
	/*********************** * * * Dao to insert user details	 ******************************/

	public int farmUserInsert(FarmUserModel userObj) {
		Connection con = null;
		PreparedStatement ps=null;
		int last_inserted_id =0;
		try {	

			/*********************************** get db connection ***********************************************/
			con = DbUtil.getConnection();			
			String sql="insert into user_mast(user_id,name,mobile,email_id,address,user_name,password,user_role,active_status,login_status)  values(?,?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			ps.setInt(1, 0);
			ps.setString(2, userObj.getName());
			ps.setString(3, userObj.getMobno());
			ps.setString(4, userObj.getEmailId());
			ps.setString(5, userObj.getAddress());
			ps.setString(6, userObj.getUserName());
			ps.setString(7, userObj.getPassword());
			ps.setString(8,String.valueOf( userObj.getUserRole()));
			ps.setString(9, String.valueOf(userObj.getActiveStatus()));
			ps.setString(10, String.valueOf(userObj.getLoginStatus()));
			int i=ps.executeUpdate();
			if(i!=0){
				ResultSet rs = ps.getGeneratedKeys();
	            if(rs.next())
	            {
	                 last_inserted_id = rs.getInt(1);
	                 System.out.println("int last_inserted_id ="+last_inserted_id );
	            }
			}
			

		}catch (SQLException ex) {
			ex.printStackTrace();
			
		}  catch (Exception e) {
			e.printStackTrace();
			
		} finally {

			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
				
			}
		}
		return last_inserted_id;
	}

	public boolean checkUserPass(FarmUserModel userBean) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean resultflag=false;
		ResultSet rs;
		try {
				
				/***********************************get db connection***********************************************/
				con=DbUtil.getConnection();
				/***********************************select query************************************/
				String username=userBean.getUserName();
				String password=userBean.getPassword();
				String checkUserPassQuery="select * from "+UserMast_tbl+" where "+user_name_col+"=? and "+password_col+"=?";
				ps=con.prepareStatement(checkUserPassQuery);
				ps.setString(1, username);
				ps.setString(2, password);
			//	System.out.println("Check Pass: "+ps);
				rs=ps.executeQuery();
				if (rs.next())
				{
					resultflag=true;
				}
				else 
				{
				    resultflag=false;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally{
				try {
					ps.close();
					con.close();
					} catch (SQLException e) {
						e.printStackTrace();
				}
			}
			return resultflag;
		}

	public ArrayList<FarmUserModel> getUserDetails(FarmUserModel userBean) {
		Connection con=null;
		PreparedStatement ps=null;
		ArrayList<FarmUserModel> userList=new ArrayList<FarmUserModel>();
		ResultSet rs;
		try {
				
				/***********************************get db connection***********************************************/
				con=DbUtil.getConnection();
				/***********************************select query************************************/
				String username=userBean.getUserName();
				String password=userBean.getPassword();
				String checkUserPassQuery="select * from "+UserMast_tbl+" where "+user_name_col+"=? and "+password_col+"=?";
				ps=con.prepareStatement(checkUserPassQuery);
				ps.setString(1, username);
				ps.setString(2, password);
				rs=ps.executeQuery();
					while (rs.next())
					{
						FarmUserModel userListBean=new FarmUserModel();
							userListBean.setUserId(rs.getInt(user_id_col));
							userListBean.setUserName(rs.getString(user_name_col));			
							userListBean.setEmailId(rs.getString(email_id_col));
							userListBean.setUserRole(rs.getString(user_role_col).charAt(0));
							userList.add(userListBean);	
					}
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally{
				try {
					ps.close();
					con.close();
					} catch (SQLException e) {
						e.printStackTrace();
				}
			}
			return userList;
	}

	
	/*********************************** get user by id ***********************************************/

	public ArrayList<FarmUserModel> getUserDetailsByIuserID(FarmUserModel userBean) {
		Connection con=null;
		PreparedStatement ps=null;
		ArrayList<FarmUserModel> userList=new ArrayList<FarmUserModel>();
		ResultSet rs;
		try {
				
				/***********************************get db connection***********************************************/
				con=DbUtil.getConnection();
				/***********************************select query************************************/
				int userId = userBean.getUserId();
				String query="select * from "+UserMast_tbl+" where user_id=?";
				ps=con.prepareStatement(query);
				ps.setInt(1, userId);
				
				rs=ps.executeQuery();
					while (rs.next())
					{
						FarmUserModel userListBean=new FarmUserModel();
							userListBean.setUserId(rs.getInt(user_id_col));
							userListBean.setName(rs.getString(name_col));
							userListBean.setMobno(rs.getString(mobile_col));
							userListBean.setEmailId(rs.getString(email_id_col));
							userListBean.setAddress(rs.getString(address_col));
							userListBean.setCity(rs.getString(city_col));
							userListBean.setState(rs.getString(state_col));
							userListBean.setCountry(rs.getString(country_col));
							userListBean.setUserName(rs.getString(user_name_col));	
							userListBean.setPassword(rs.getString(password_col));
							//userListBean.setUserRole(rs.getString(user_role_col).charAt(0));
							userList.add(userListBean);	
					}
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally{
				try {
					ps.close();
					con.close();
					} catch (SQLException e) {
						e.printStackTrace();
				}
			}
			return userList;
	}
	/*********************************** update user info ***********************************************/


	public boolean updateUserInfo(FarmUserModel userBean) {
		boolean result = false;

		Connection con = null;
		PreparedStatement ps=null;

		try {
			/*********************************** * * get db connection ***********************************************/

			con = DbUtil.getConnection();
			ps = con.prepareStatement("update user_mast set name=?,mobile=?,email_id=?,address=?,city=?,state=?,country=?,user_name=?,password=?,user_role=?,active_status=? where user_id = ?");

			
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
