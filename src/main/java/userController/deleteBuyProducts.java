package userController;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userBean.Cart;
/*

@WebServlet(urlPatterns = "/deleteBuyProduct")
public class deleteBuyProducts extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sess = req.getSession(false);
		String user_email = (String)sess.getAttribute("m");
		
		//String buyer_email= req.getParameter("buyer_email") ;
		Cart cart = new Cart();
		cart.setUserEmail(user_email);
		try {
			int row=cart.DeleteBuyProductFromCart(user_email);
			if(row==1) {
				resp.sendRedirect("my_orders.jsp");
			}
			else {
				System.out.println("Error occured...");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}


*/