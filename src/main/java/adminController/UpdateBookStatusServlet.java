package adminController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminBean.admin;

@WebServlet("/updatebookservlet")
public class UpdateBookStatusServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String order_id = req.getParameter("id"); 
		int id=Integer.parseInt(order_id); 
		admin ad = new admin();
		
		ad.updatebookstatus(id);
		resp.sendRedirect("admin/books.jsp");
	}
}
