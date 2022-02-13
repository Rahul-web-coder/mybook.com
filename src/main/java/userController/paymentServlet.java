package userController;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userBean.payment;

@WebServlet(urlPatterns = "/paymentServ")
public class paymentServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession ses_email = req.getSession(false);
		String email = (String) ses_email.getAttribute("m");
		
		
		if(req.getParameter("transactionId") == null){
			
			//session name while login
			
			int amount = Integer.parseInt(req.getParameter("amount"));
			
			
			System.out.print(amount);
			payment p = new payment();
			p.setUserEmail(email);
			p.setAmount(amount);
			
			
			try {
				int res = p.addPayment();
				ses_email.setAttribute("lastId", res);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else {
			//String mobileno = req.getParameter("mobileno");
			String transactionid = req.getParameter("transactionId");
			
			int lastid = (int) ses_email.getAttribute("lastId");
			System.out.println(lastid);
			payment p = new payment();
			p.setUserEmail(email);
			p.setTransactionId(transactionid);
			
			try {
				int res = p.updatePayment(transactionid, lastid);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
	}

}
