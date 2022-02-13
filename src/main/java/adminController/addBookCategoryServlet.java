package adminController;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userBean.ProductCategory;


@WebServlet(urlPatterns = "/addCategory")
public class addBookCategoryServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		//int cId = Integer.parseInt(req.getParameter("cId"));
		String cName=req.getParameter("category-name");
		String cDes=req.getParameter("category-desc");
		
		ProductCategory pc = new ProductCategory();
		//c.setCategoryId(cId);
		pc.setpCategoryName(cName);
		pc.setpCategoryDesc(cDes);
		
		
		try {
			int cd = pc.addCategory();
			if(cd==1) {
				resp.sendRedirect("admin/books.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
