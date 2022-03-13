

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResultSet resultSet = null;
    public Register() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("user_name");
		String pass = request.getParameter("password");
		String pass_match = request.getParameter("password_check");
		ArrayList<String> user_names = new ArrayList<String>();
		try {
			Connection con = DatabaseConnection.initializeDatabase();
			PreparedStatement st = con.prepareStatement("select * from users");
			resultSet = st.executeQuery();
			while(resultSet.next()) {
				String username = resultSet.getString("username");
				user_names.add(username);
			}
			if(user_names.contains(uname)) {
				System.out.println("Username has been used before. Please choose another username.\n");
				response.sendRedirect("register.jsp");
			}
			else {
				if(pass.equals(pass_match)) {
					UUID uuid = UUID.randomUUID();
					int id = (int) uuid.getMostSignificantBits();
					id = Math.abs(id);
					PreparedStatement st2 = con.prepareStatement("insert into users values(?, ?, ?)");
					st2.setInt(1, id);
					st2.setString(2, uname);
					st2.setString(3, pass);
					st2.executeUpdate(); 
					st2.close(); 
		            con.close();
		            System.out.print("Registered successful.\n");
		            response.sendRedirect("form.jsp");
		            
				}
				else {
					System.out.println("Passwords are not matched.Please try again...\n");
					response.sendRedirect("register.jsp");
				}
			}
            
		} catch (ClassNotFoundException e) {
			System.out.println("Something went wrong..\n");
		} catch (SQLException e) {
			System.out.println("Database connection failed.\n");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
