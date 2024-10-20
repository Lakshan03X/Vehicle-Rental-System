package vehicle;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db_connection.DB_Connection;

@WebServlet("/vehicle")
public class insertVehicleServlet extends HttpServlet { //inharitance
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vehicle_number = request.getParameter("vehicle_number");
        String Brand = request.getParameter("brand");
        String Model = request.getParameter("model");
        String Type = request.getParameter("type");
        String Color = request.getParameter("color");
        String V_Year = request.getParameter("v_year");
        String PricePerHour = request.getParameter("price_hour");
        
        RequestDispatcher dispatcher = null;
        DB_Connection new_con = new DB_Connection();
		Connection con = new_con.get_Connection();

        
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	
            PreparedStatement pst = con.prepareStatement("INSERT INTO vehicle_data(vehicle_number,brand,model,type,color,v_year,price_hour) VALUES(?, ?, ?, ?, ?, ?, ?)");
            pst.setString(1, vehicle_number);
            pst.setString(2, Brand);
            pst.setString(3, Model);
            pst.setString(4, Type);
            pst.setString(5, Color);
            pst.setString(6, V_Year);
            pst.setString(7, PricePerHour);

			
			int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("vehicle_page.jsp");

            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null)
                    con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }
}