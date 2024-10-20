package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db_connection.DB_Connection;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String f_name = request.getParameter("first_name");

        
        HttpSession session = request.getSession();
        DB_Connection new_con = new DB_Connection();
		Connection con = new_con.get_Connection();

        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            PreparedStatement pst = con.prepareStatement("select * from registration_data where email = ? and password = ?");
            pst.setString(1, email);
            pst.setString(2, password);

            RequestDispatcher dispatcher = null;
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                if ("admin@gmail.com".equals(email)) {
                    if ("admin123".equals(password)) {
                    	session.setAttribute("email", "admin@gmail.com");
                        dispatcher = request.getRequestDispatcher("admin_page.jsp");
                    } else {
                        request.setAttribute("alert", "Invalid admin password. Please try again.");
                        dispatcher = request.getRequestDispatcher("login_page.jsp");
                    }
                } else {
                    session.setAttribute("email", rs.getString("email"));
                    dispatcher = request.getRequestDispatcher("index.jsp");
                }
            } else {
                request.setAttribute("alert", "Invalid email or password. Please try again.");
                dispatcher = request.getRequestDispatcher("login_page.jsp");
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
