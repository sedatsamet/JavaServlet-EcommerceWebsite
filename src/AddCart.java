

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


@WebServlet("/AddCart")
public class AddCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
private ResultSet resultSet = null;
	
	public ArrayList<Product> shopping_cart = new ArrayList<Product>();
	
	ArrayList<String> prodNames = new ArrayList<>();
	
	public ArrayList<String> getProdNames() {
		return prodNames;
	}
	public class Product {
		int prodID;
		String prodName;
		String prodBrand;
		int quantity;
		int price;
		String imgsrc;
		Product(int id,String name, String brand,int quantity,int price,String imgsrc){
			this.prodID = id;
			this.prodName = name;
			this.prodBrand = brand;
			this.quantity = quantity;
			this.price = price;
			this.imgsrc = imgsrc;
		}
		public int getProdID() {
			return prodID;
		}
		public String getProdName() {
			return prodName;
		}
		public String getProdBrand() {
			return prodBrand;
		}
		public int getQuantity() {
			return quantity;
		}
		public int getPrice() {
			return price;
		}
		public String getImgsrc() {
			return imgsrc;
		}
		
	}
    public AddCart() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String product_name = request.getParameter("name");
		
		if(session == null) {
			ArrayList<Product> empty_shopc = new ArrayList<Product>();
			session.removeAttribute("shop_cart");
			session.setAttribute("shop_cart", empty_shopc);
		}
		else {
			try {
				shopping_cart = (ArrayList<Product>) session.getAttribute("shop_cart");
				Connection con = DatabaseConnection.initializeDatabase();
				PreparedStatement st = con.prepareStatement("SELECT * from products where prodName='"+product_name+"'");
				resultSet = st.executeQuery();
				while(resultSet.next()) {
					int id = resultSet.getInt("prodID");
					String name = resultSet.getString("prodName");
					String brand = resultSet.getString("prodBrand");
					int quantity = resultSet.getInt("quantity");
					int price = resultSet.getInt("price");
					String imgsrc = resultSet.getString("imgsrc");
					
					shopping_cart.add(new Product(id,name,brand,quantity,price,imgsrc));
					prodNames.add(name);
				}
				
			} catch (ClassNotFoundException e) {
				System.out.println("Something went wrong..\n");
			} catch (SQLException e) {
				System.out.println("Database connection failed.\n");
			}	
		}
		
		session.setAttribute("shop_cart",shopping_cart);
		response.sendRedirect("ShoppingCart");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
