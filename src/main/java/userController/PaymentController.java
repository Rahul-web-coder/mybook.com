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

@WebServlet(urlPatterns = "/subscription")
public class PaymentController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		if(req.getParameter("transactionid")==null) {
			
			String mobileno = req.getParameter("mobileno");
			int amount = Integer.parseInt(req.getParameter("amount"));
			Subscription s =new Subscription();
			s.setMobileno(mobileno);
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
			
			String mobileno = req.getParameter("mobileno");
			String transactionid = req.getParameter("transactionid");
			Subscription s =new Subscription();
			s.setMobileno(mobileno);
			s.setTransactionid(transactionid);
			try {
				int res=s.updatepayment(transactionid, mobileno);
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