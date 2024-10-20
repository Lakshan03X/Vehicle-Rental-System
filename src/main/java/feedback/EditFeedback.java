package feedback;

import db_connection.DB_Connection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EditFeedback {

	public StoreFeedback get_value(String userName){
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_Connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		StoreFeedback obj_User_Bean=new StoreFeedback();
		
		try {
			
		 String querry="select * from feedback_data where feedback_id=?";
		 ps=connection.prepareStatement(querry);
		 
		 ps.setString(1, userName);;
		 rs=ps.executeQuery();
		 
		 while(rs.next()){
		  obj_User_Bean.setFeedback_id("feedback_id");
		  obj_User_Bean.setFeedback_content("feedback_content");
		  obj_User_Bean.setRating_value("rating_value");
		  
	         }
		 
		} catch (Exception e) {
			
		System.out.println(e);
		}
		
		return obj_User_Bean;
	}
	
	
	public void edit_user(StoreFeedback obj_User_Bean){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_Connection();
		
		PreparedStatement ps=null;
		try {
		String querry="UPDATE feedback_data SET feedback_content=?,rating_value=? WHERE feedback_id=?";
		 ps=connection.prepareStatement(querry);		
		 ps.setString(1, obj_User_Bean.getFeedback_content());;
		 ps.setString(2, obj_User_Bean.getRating_value());;
		 ps.setString(3, obj_User_Bean.getFeedback_id());;
		 
		 
		 ps.executeUpdate();
		} catch (Exception e) {
		System.out.println(e);
		}
	}

	
}