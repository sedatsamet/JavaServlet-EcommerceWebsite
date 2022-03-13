

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Products")
public class Products extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResultSet resultSet = null;
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
	public List<Product> products;
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}
    public Products() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		products = new ArrayList<Product>();
		try {
			Connection con = DatabaseConnection.initializeDatabase();
			PreparedStatement st = con.prepareStatement("SELECT * from products");
			resultSet = st.executeQuery();
			while(resultSet.next()) {
				int id = resultSet.getInt("prodID");
				String name = resultSet.getString("prodName");
				String brand = resultSet.getString("prodBrand");
				int quantity = resultSet.getInt("quantity");
				int price = resultSet.getInt("price");
				String imgsrc = resultSet.getString("imgsrc");
				products.add(new Product(id,name,brand,quantity,price,imgsrc));
			}
			
		} catch (ClassNotFoundException e) {
			System.out.println("Something went wrong..\n");
		} catch (SQLException e) {
			System.out.println("Database connection failed.\n");
		}
		request.setAttribute("prods",products);
		
		String result = "products.jsp";
		ServletContext sc = this.getServletContext();
		RequestDispatcher rd = sc.getRequestDispatcher("/products.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
