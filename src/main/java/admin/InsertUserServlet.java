package admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db_connection.DB_Connection;

@WebServlet("/user")
public class InsertUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fist_name = request.getParameter("f_name");
        String last_name = request.getParameter("l_name");
        String email = request.getParameter("email");
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String contact_no = request.getParameter("contact_no");
        String gender = request.getParameter("gender_type");
        String password = request.getParameter("password");
        String user_type = request.getParameter("user_type");
        
        RequestDispatcher dispatcher = null;
        DB_Connection new_con = new DB_Connection();
		Connection con = new_con.get_Connection();

        
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	
            PreparedStatement pst = con.prepareStatement("INSERT INTO registration_data(first_name,last_name,email,province,city,contact_no,gender,password,user_type) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");
            pst.setString(1, fist_name);
            pst.setString(2, last_name);
            pst.setString(3, email);
            pst.setString(4, province);
            pst.setString(5, city);
            pst.setString(6, contact_no);
            pst.setString(7, gender);
            pst.setString(8, password);
            pst.setString(9, user_type);

			
			int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("admin_page.jsp");

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