package userController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import paymentBean.Subscription;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/subscription")
public class PaymentController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession(false);
		String Email=(String)session.getAttribute("m");
		if(req.getParameter("transactionid")==null) {
			
			String email = Email;
			int amount = Integer.parseInt(req.getParameter("amount"));
			Subscription s =new Subscription();
			s.setEmail(email);
			s.setAmount(amount);
			try {
				int res=s.addpayment();
				if(res==1) {
					out.print("data Added in Database ");
				}
				else {
					out.print("data not Added in Database ");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else {
			
			String email =Email;
			String transactionid = req.getParameter("transactionid");
			Subscription s =new Subscription();
			s.setEmail(email);
			s.setTransactionid(transactionid);
			try {
				int res=s.updatepayment(transactionid, email);
				if(res==1) {
					out.print("data updated in Database ");
				}
				else {
					out.print("data not updated in Database ");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}