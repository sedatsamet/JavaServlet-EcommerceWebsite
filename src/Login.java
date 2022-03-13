

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login<Product> extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResultSet resultSet = null;
    public Login() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("user_name");
		String password = request.getParameter("password");
		try {
			Connection con = DatabaseConnection.initializeDatabase();
			PreparedStatement st = con.prepareStatement("select * from users where username='"+username+"' and password='"+password+"'");
			resultSet = st.executeQuery();
			if(resultSet.next()) {
				ArrayList<Product> shopping_cart = new ArrayList<Product>();
				System.out.println("Login Successful.\n");
				HttpSession session = request.getSession();
				session.setAttribute("shop_cart",shopping_cart);
				session.setAttribute("username",username);
				response.sendRedirect("HomePage");
			}
			else {
				System.out.println("Username or password wrong.Please try again...\n");
				response.sendRedirect("form.jsp");
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
