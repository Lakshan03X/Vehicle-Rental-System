package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db_connection.DB_Connection;


public class ReadUser {
	private String first_name;
	private String last_name;
	private String email;
	private String province;
	private String city;
	private String contact_no;
	private String gender;
	private String password;
	private String user_type;
	
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	
	public List<ReadUser> get_values() {
        DB_Connection new_con = new DB_Connection();
        Connection con = new_con.get_Connection();
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        List<ReadUser> list = new ArrayList<>();
        
        try {
            String query = "SELECT * FROM registration_data";
            pst = con.prepareStatement(query);
            rs = pst.executeQuery();
            
            while (rs.next()) {
            	ReadUser save = new ReadUser();
            	
            	save.setFirst_name(rs.getString("first_name"));
            	save.setLast_name(rs.getString("last_name"));
            	save.setEmail(rs.getString("email"));
            	save.setProvince(rs.getString("province"));
            	save.setCity(rs.getString("city"));
            	save.setContact_no(rs.getString("contact_no"));
            	save.setGender(rs.getString("gender"));
            	save.setPassword(rs.getString("password"));
            	save.setUser_type(rs.getString("user_type"));

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
    	ReadUser stf = new ReadUser();
        stf.get_values();
    }


}
