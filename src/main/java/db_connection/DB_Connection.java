package db_connection;
import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB_Connection {
    public static void main(String[] args) {
        DB_Connection dbConnection = new DB_Connection();
        System.out.println(dbConnection.get_Connection());
    }

    public Connection get_Connection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle_rent_system", "root" , "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return connection;
    }
}
