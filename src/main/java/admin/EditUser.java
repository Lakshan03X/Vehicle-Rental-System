package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db_connection.DB_Connection;

public class EditUser {
public StoreUser get_value(String email){
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_Connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		StoreUser obj_User_Bean=new StoreUser();
		
		try {
			
		 String querry="select * from registration_data where email=?";
		 ps=connection.prepareStatement(querry);
		 
		 ps.setString(1, email);;
		 rs=ps.executeQuery();
		 
		 if (rs.next()) {
			    obj_User_Bean.setFirst_name(rs.getString("first_name"));
			    obj_User_Bean.setLast_name(rs.getString("last_name"));
			    obj_User_Bean.setEmail(rs.getString("email"));
			    obj_User_Bean.setProvince(rs.getString("province"));
			    obj_User_Bean.setCity(rs.getString("city"));
			    obj_User_Bean.setContact_no(rs.getString("contact_no"));
			    obj_User_Bean.setGender(rs.getString("gender"));
			    obj_User_Bean.setPassword(rs.getString("password"));
			    obj_User_Bean.setUser_type(rs.getString("user_type"));
			}

		 
		} catch (Exception e) {
			
		System.out.println(e);
		}
		
		return obj_User_Bean;
	}
	
	
	public void edit_user(StoreUser obj_User_Bean){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_Connection();
		
		PreparedStatement ps=null;
		try {
		String querry="UPDATE registration_data SET first_name=?,last_name=?,province=?,city=?,contact_no=?,gender=?,password=?,user_type=? WHERE email=?";
		 ps=connection.prepareStatement(querry);		
		 ps.setString(1, obj_User_Bean.getFirst_name());;
		 ps.setString(2, obj_User_Bean.getLast_name());;
		 ps.setString(3, obj_User_Bean.getProvince());;
		 ps.setString(4, obj_User_Bean.getCity());;
		 ps.setString(5, obj_User_Bean.getContact_no());;
		 ps.setString(6, obj_User_Bean.getGender());
		 ps.setString(7, obj_User_Bean.getPassword());
		 ps.setString(8, obj_User_Bean.getUser_type());
		 ps.setString(9, obj_User_Bean.getEmail());
		 
		 ps.executeUpdate();
		} catch (Exception e) {
		System.out.println(e);
		}
	}

	
}
