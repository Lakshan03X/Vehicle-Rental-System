package driver;
import java.sql.*;

import db_connection.DB_Connection;

public class DeleteDriver {
	public void delete_value(String driver_id){
		DB_Connection new_con = new DB_Connection();
		Connection con = new_con.get_Connection();
		
		PreparedStatement pst =null;
		try {
		 String querry="DELETE FROM driver_data WHERE id=?";
		 pst=con.prepareStatement(querry);	
		 
		 pst.setString(1, driver_id);;
		 pst.executeUpdate();
		 
		} catch (Exception e) {
		 System.out.println(e);
		}
	}
}
