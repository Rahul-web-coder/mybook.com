package userController;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userBean.Cart;
import userBean.Product;
@WebServlet(urlPatterns = "/addtocart")
public class AddToCartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id= Integer.parseInt(req.getParameter("id")) ;
		Product p1 = new Product();
	    p1.setpId(id);
	    HttpSession se = req.getSession(false);
	    String Email=(String)se.getAttribute("m");
	    String page = "";
	    try {
	    	 if(Email==null) {
	    		 page = "signIn.jsp";
	 	    }
	    	 
	    	else {
					Product p2 =p1.getAllProductsFromDB(id);
					String pname=p2.getpName();
					String pAuthor=p2.getpAuthor();
					String pDesc=p2.getpDescription();
					String pSeller=p2.getpSeller();
					int price=p2.getpPrice();
					int pDisc=p2.getpId();
					String pimage=p2.getpImage();
					int pcat=p2.getpCategoryId();
					Cart cart = new Cart();
					cart.setpName(pname);
					cart.setpAuthor(pAuthor);
					cart.setpDescription(pDesc);
					cart.setpSeller(pSeller);
					cart.setpPrice(price);
					cart.setpDiscount(pDisc);
					cart.setpImage(pimage);
					cart.setpCategoryId(pcat);
					cart.setUserEmail(Email);
					int checkduplicateprod=cart.checkDuplicateProductfromCart();
					if(checkduplicateprod==1) {
						int row=cart.updateDuplicateProductfromCart();
						System.out.println(row);
						if(row!=0) {
							System.out.print("Product Updated successfully");
							page="cart.jsp";
						}
						else {
							System.out.println("Error Occurred");
						}
					}
					else {
						int row=cart.AddToCartProducts();
						if(row==1) {
							System.out.print("Product Added successfully");
							page="cart.jsp";
							
						}
						else {
							System.out.println("Error Occurred");
						}
					}
					    	
	      }
	    	
	    	 RequestDispatcher dd=req.getRequestDispatcher(page);
	    	 dd.forward(req, resp);
			
	    	 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
