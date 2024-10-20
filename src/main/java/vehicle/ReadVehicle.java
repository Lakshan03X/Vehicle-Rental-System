package vehicle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db_connection.DB_Connection;
import driver.ReadDriver;

//encapsulation
public class ReadVehicle {
	private int vehicle_id;
	private String Vehicle_number;
	private String brand;
	private String model;
	private String type;
	private String color;
	private String v_year;
	private String price_hour;
	
	//constructor
	public int getVehicle_id() {
		return vehicle_id;
	}
	public void setVehicle_id(int vehicle_id) {
		this.vehicle_id = vehicle_id;
	}
	public String getVehicle_number() {
		return Vehicle_number;
	}
	public void setVehicle_number(String Vehicle_number) {
		this.Vehicle_number = Vehicle_number;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getV_year() {
		return v_year;
	}
	public void setV_year(String v_year) {
		this.v_year = v_year;
	}
	public String getPrice_hour() {
		return price_hour;
	}
	public void setPrice_hour(String price_hour) {
		this.price_hour = price_hour;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	private byte[] image;
	
	public List<ReadVehicle> get_values() {
        DB_Connection new_con = new DB_Connection();
        Connection con = new_con.get_Connection();
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        List<ReadVehicle> list = new ArrayList<>();
        
        try {
            String query = "SELECT * FROM vehicle_data";
            pst = con.prepareStatement(query);
            rs = pst.executeQuery();
            
            while (rs.next()) {
            	ReadVehicle save = new ReadVehicle();
            	
            	save.setVehicle_id(rs.getInt("vehicle_id"));
            	save.setVehicle_number(rs.getString("vehicle_number"));
            	save.setBrand(rs.getString("brand"));
            	save.setModel(rs.getString("model"));
            	save.setType(rs.getString("type"));
            	save.setColor(rs.getString("color"));
            	save.setV_year(rs.getString("v_year"));
            	save.setPrice_hour(rs.getString("price_hour"));

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
    	ReadVehicle stf = new ReadVehicle();
        stf.get_values();


    }

}
