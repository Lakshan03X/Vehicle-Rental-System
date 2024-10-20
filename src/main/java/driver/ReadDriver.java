package driver;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db_connection.DB_Connection;

public class ReadDriver {
	//encapsulation
	private int driver_id;
	private String fist_name;
	private String last_name;
	private String province;
	private String city;
	private String email;
	private String contact_no;
	private String gender;
	private String price;
	private byte[] img_file;
	
	public String getFist_name() {
		return fist_name;
	}
	public void setFist_name(String fist_name) {
		this.fist_name = fist_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
    public byte[] getimg_file() {
        return img_file;
    }

    public void setimg_file(byte[] img_file) {
        this.img_file = img_file;
    }
    
	public int getDriver_id() {
		return driver_id;
	}
	public void setDriver_id(int driver_id) {
		this.driver_id = driver_id;
	}
	
	public List<ReadDriver> get_values() {
        DB_Connection new_con = new DB_Connection();
        Connection con = new_con.get_Connection();
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        List<ReadDriver> list = new ArrayList<>();
        
        try {
            String query = "SELECT * FROM driver_data";
            pst = con.prepareStatement(query);
            rs = pst.executeQuery();
            
            while (rs.next()) {
            	ReadDriver save = new ReadDriver();
            	
            	save.setDriver_id(rs.getInt("id"));
                save.setFist_name(rs.getString("first_name"));
                save.setLast_name(rs.getString("last_name"));;
                save.setProvince(rs.getString("province"));
                save.setCity(rs.getString("city"));
                save.setEmail(rs.getString("email"));
                save.setContact_no(rs.getString("contact_no"));
                save.setGender(rs.getString("gender"));
                save.setPrice(rs.getString("price_per_hour"));
                save.setimg_file(rs.getBytes("licence_image"));

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
    	ReadDriver stf = new ReadDriver();
        stf.get_values();
    }

}
