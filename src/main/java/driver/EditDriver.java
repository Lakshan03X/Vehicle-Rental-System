package driver;

import db_connection.DB_Connection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EditDriver {

	public StoreDriver get_value(String email){
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_Connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		StoreDriver obj_User_Bean=new StoreDriver();
		
		try {
			
		 String querry="select * from driver_data where email=?";
		 ps=connection.prepareStatement(querry);
		 
		 ps.setString(1, email);;
		 rs=ps.executeQuery();
		 
		 while(rs.next()){
		  obj_User_Bean.setFist_name("first_name");
		  obj_User_Bean.setLast_name("last_name");
		  obj_User_Bean.setProvince("province");
		  obj_User_Bean.setCity("city");
		  obj_User_Bean.setEmail("email");
		  obj_User_Bean.setContact_no("contact_no");
		  obj_User_Bean.setGender("gender");
		  obj_User_Bean.setPrice("price_per_hour");
		  
	         }
		 
		} catch (Exception e) {
			
		System.out.println(e);
		}
		
		return obj_User_Bean;
	}
	
	
	public void edit_user(StoreDriver obj_User_Bean){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_Connection();
		
		PreparedStatement ps=null;
		try {
		String querry="UPDATE driver_data SET first_name=?,last_name=?,province=?,city=?,contact_no=?,gender=?,price_per_hour=? WHERE email=?";
		 ps=connection.prepareStatement(querry);		
		 ps.setString(1, obj_User_Bean.getFist_name());;
		 ps.setString(2, obj_User_Bean.getLast_name());;
		 ps.setString(3, obj_User_Bean.getProvince());;
		 ps.setString(4, obj_User_Bean.getCity());;
		 ps.setString(5, obj_User_Bean.getContact_no());;
		 ps.setString(6, obj_User_Bean.getGender());;
		 ps.setString(7, obj_User_Bean.getPrice());;
		 ps.setString(8, obj_User_Bean.getEmail());;
		 
		 
		 ps.executeUpdate();
		} catch (Exception e) {
		System.out.println(e);
		}
	}

	
}