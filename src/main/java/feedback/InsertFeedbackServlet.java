package feedback;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import db_connection.DB_Connection;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


@WebServlet("/feedback")
public class InsertFeedbackServlet extends HttpServlet {
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Extract data from the request
    	String feedbackId = request.getParameter("feedback_id");
        String feedbackContent = request.getParameter("feedback_con");
        String rating = request.getParameter("rating");
        
        
        RequestDispatcher dispatcher = null;
        DB_Connection new_con = new DB_Connection();
		Connection con = new_con.get_Connection();

        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Fix typo in class name
            PreparedStatement pst = con.prepareStatement("insert into feedback_data(feedback_id,feedback_content,rating_value) values(?, ?, ?)");
            pst.setString(1, feedbackId);
            pst.setString(2, feedbackContent);
            pst.setString(3, rating);

			
			int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("feedback_page.jsp");

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