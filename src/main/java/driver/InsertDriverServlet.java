package driver;

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

@WebServlet("/driver")
public class InsertDriverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fist_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String email = request.getParameter("email");
        String contact_no = request.getParameter("contact_no");
        String gender = request.getParameter("gender");
        String price = request.getParameter("price_per_hour");
        String img_file = request.getParameter("img_file");
        
        RequestDispatcher dispatcher = null;
        DB_Connection new_con = new DB_Connection();
		Connection con = new_con.get_Connection();

        
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	
            PreparedStatement pst = con.prepareStatement("INSERT INTO driver_data(first_name,last_name,province,city,email,contact_no,gender,price_per_hour,licence_image) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");
            pst.setString(1, fist_name);
            pst.setString(2, last_name);
            pst.setString(3, province);
            pst.setString(4, city);
            pst.setString(5, email);
            pst.setString(6, contact_no);
            pst.setString(7, gender);
            pst.setString(8, price);
            pst.setString(9, img_file);

			
			int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("driver_page.jsp");

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