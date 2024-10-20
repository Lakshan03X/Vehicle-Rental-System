package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db_connection.DB_Connection;

public class DeleteUser {
	public void delete_value(String vehicle_number){
		DB_Connection new_con = new DB_Connection();
		Connection con = new_con.get_Connection();
		
		PreparedStatement pst =null;
		try {
		 String querry="DELETE FROM registration_data WHERE email=?";
		 pst=con.prepareStatement(querry);	
		 
		 pst.setString(1, vehicle_number);;
		 pst.executeUpdate();
		 
		} catch (Exception e) {
		 System.out.println(e);
		}
	}
}
