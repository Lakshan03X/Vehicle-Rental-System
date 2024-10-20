package feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db_connection.DB_Connection;

public class ReadFeedback {
	
	private String rating_value;
    private String feedback_id;
    private String feedback_content;
    

    // Constructor
    public ReadFeedback() {}
    
    public String getRating_value() {
        return rating_value;
    }

    public void setRating_value(String rating_value) {
        this.rating_value = rating_value;
    }

    public String getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(String feedback_id) {
        this.feedback_id = feedback_id;
    }

    public String getFeedback_content() {
        return feedback_content;
    }

    public void setFeedback_content(String feedback_content) {
        this.feedback_content = feedback_content;
    }

    

    public List<ReadFeedback> get_values() {
        DB_Connection new_con = new DB_Connection();
        Connection con = new_con.get_Connection();
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        List<ReadFeedback> list = new ArrayList<>();
        
        try {
            String query = "SELECT * FROM feedback_data";
            pst = con.prepareStatement(query);
            rs = pst.executeQuery();
            
            while (rs.next()) {
                ReadFeedback save = new ReadFeedback();
                
                save.setFeedback_id(rs.getString("feedback_id"));
                save.setFeedback_content(rs.getString("feedback_content"));
                save.setRating_value(rs.getString("rating_value"));
                
                list.add(save);
            }
        } catch (Exception e) {
        	
            e.printStackTrace();
        } finally {
        	
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        return list;
    }
    
    public static void main(String[] args) {
        ReadFeedback stf = new ReadFeedback();
        stf.get_values();
    }
}
