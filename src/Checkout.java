

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Checkout")
public class Checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AddCart adc = new AddCart();
	public class Product {
		int prodID;
		String prodName;
		String prodBrand;
		int prodPrice;
		int quantity;
		String imgsrc;
		Product(int id,String name, String brand,int price,int quantity,String imgsrc){
			this.prodID = id;
			this.prodName = name;
			this.prodBrand = brand;
			this.prodPrice = price;
			this.quantity = quantity;
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
		public int getProdPrice() {
			return prodPrice;
		}
		public int getQuantity() {
			return quantity;
		}
		public String getImgsrc() {
			return imgsrc;
		}
		
	}
    public Checkout() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		ArrayList<Product> empty_shopc = new ArrayList<Product>();
		adc.shopping_cart = (ArrayList<AddCart.Product>) session.getAttribute("shop_cart");
		
		for(int i=0; i<adc.shopping_cart.size(); i++) {
			String product_name = adc.shopping_cart.get(i).prodName;
			try {
				Connection con = DatabaseConnection.initializeDatabase();
				PreparedStatement st = con.prepareStatement("update products set quantity=(quantity - 1) where prodName='"+product_name+"'");
				st.executeUpdate();
			} catch (ClassNotFoundException e) {
				System.out.println("Something went wrong..\n");
			} catch (SQLException e) {
				System.out.println("Database connection failed.\n");
			}	
		}
		session.removeAttribute("shop_cart");
		session.setAttribute("shop_cart",empty_shopc);
		
		String result = "index.jsp";
		ServletContext sc = this.getServletContext();
		RequestDispatcher rd = sc.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
