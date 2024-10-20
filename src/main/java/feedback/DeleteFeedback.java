package feedback;
import java.sql.*;

import db_connection.DB_Connection;

public class DeleteFeedback {
	public void delete_value(String feedback_id){
		DB_Connection new_con = new DB_Connection();
		Connection con = new_con.get_Connection();
		
		PreparedStatement pst =null;
		try {
		 String querry="DELETE FROM feedback_data WHERE feedback_id=?";
		 pst=con.prepareStatement(querry);	
		 
		 pst.setString(1, feedback_id);;
		 pst.executeUpdate();
		 
		} catch (Exception e) {
		 System.out.println(e);
		}
	}
}
