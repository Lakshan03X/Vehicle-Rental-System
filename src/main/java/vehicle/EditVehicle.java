package vehicle;

import db_connection.DB_Connection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EditVehicle {

    public StoreVehicle get_value(String vehicleNumber) {

        DB_Connection obj_DB_Connection = new DB_Connection();
        Connection connection = obj_DB_Connection.get_Connection();

        PreparedStatement ps = null;
        ResultSet rs = null;

        StoreVehicle obj_Vehicle_Bean = new StoreVehicle();

        try {

            String query = "SELECT * FROM vehicle_data WHERE vehicle_number=?";
            ps = connection.prepareStatement(query);
            ps.setString(1, vehicleNumber);
            rs = ps.executeQuery();

            if (rs.next()) {
                obj_Vehicle_Bean.setVehicle_number(rs.getString("vehicle_number"));
                obj_Vehicle_Bean.setBrand(rs.getString("brand"));
                obj_Vehicle_Bean.setModel(rs.getString("model"));
                obj_Vehicle_Bean.setType(rs.getString("type"));
                obj_Vehicle_Bean.setColor(rs.getString("color"));
                obj_Vehicle_Bean.setV_year(rs.getString("v_year"));
                obj_Vehicle_Bean.setPrice_hour(rs.getString("price_hour"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (connection != null) connection.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }

        return obj_Vehicle_Bean;
    }

    public void edit_vehicle(StoreVehicle obj_Vehicle_Bean) {
        DB_Connection obj_DB_Connection = new DB_Connection();
        Connection connection = obj_DB_Connection.get_Connection();

        PreparedStatement ps = null;
        try {
            String query = "UPDATE vehicle_data SET brand=?, model=?, type=?, color=?, v_year=?, price_hour=? WHERE vehicle_number=?";
            ps = connection.prepareStatement(query);
            ps.setString(1, obj_Vehicle_Bean.getBrand());
            ps.setString(2, obj_Vehicle_Bean.getModel());
            ps.setString(3, obj_Vehicle_Bean.getType());
            ps.setString(4, obj_Vehicle_Bean.getColor());
            ps.setString(5, obj_Vehicle_Bean.getV_year());
            ps.setString(6, obj_Vehicle_Bean.getPrice_hour());
            ps.setString(7, obj_Vehicle_Bean.getVehicle_number());
            
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (ps != null) ps.close();
                if (connection != null) connection.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }

}
