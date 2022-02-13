package userController;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userBean.Cart;

import userBean.my_order;


@WebServlet(urlPatterns = "/addOrderedProduct")
public class addUserOrderedProduct extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sess = req.getSession(false);
		String user_email = (String)sess.getAttribute("m");
		Cart c = new Cart();
	    c.setUserEmail(user_email);
	    System.out.println(user_email);
	    
	    String page = "";
	    try {
	    	 if(user_email==null) {
	    		 page = "signIn.jsp";
	 	    }
	    	 
	    	else {
	    		
	    		
	    		int row =0;
	    		
	    		
	    			ArrayList<Cart> ac1 = c.getAllProductsFromCartByEmail();
	    			for (int i = 0; i < ac1.size(); i++) {
	    				Cart c1 = ac1.get(i);
	    				String pname =c1.getpName();
						int price=c1.getpPrice();
						String pimage=c1.getpImage();
						int pQty=c1.getPqty();
						String buyer_name = c1.getUserEmail();
						
						
						my_order order = new my_order();
						order.setProductName(pname);
						order.setProductPrice(price);
						order.setProductImg(pimage);
						
						order.setProductQty(pQty);
						order.setStatus(pimage);
						order.setTotalPrice(price * pQty);
						order.setBuyerName(buyer_name);
						int lastid = (int) sess.getAttribute("lastId");
						order.setPaymentId(lastid);
						System.out.println(lastid + " lol " );
						
						
					
							Cart c5 = new Cart();
							int cl = c5.DeleteBuyProductFromCart(user_email);
							//System.out.println(cl + "love");
							row=order.AddToBuyedProductToOrderTable();
							
						
					}
	    			if(row==1) {
						page="my_orders.jsp";
						
					}
					else {
						System.out.println("Error Occurred");
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
