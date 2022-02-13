package adminController;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;


import userBean.Product;

@WebServlet(urlPatterns = "/addBooks")
public class addBookServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MultipartRequest m =new MultipartRequest(req,"E:\\\\Web Development Projects\\\\mybook.com\\\\src\\\\main\\\\webapp\\\\book-images");

		String bookName=m.getParameter("book-name");
		String bookAuthor=m.getParameter("book-author");
		String bookDesc=m.getParameter("book-description");
		String bookSeller=m.getParameter("book-seller");
		int bookPrice = Integer.parseInt(m.getParameter("book-price"));
		int bookDisc = Integer.parseInt(m.getParameter("book-discount"));
		int bookQty = Integer.parseInt(m.getParameter("book-qty"));
		//String bookImage=m.getParameter("book-image");
		File f = m.getFile("book-image");
		int bookCatId = Integer.parseInt(m.getParameter("book-CatId"));
		
		String image = f.getName();
		
		String  BookImage = image;

		try {

			Product bk = new Product();
			
			bk.setpName(bookName);
			bk.setpAuthor(bookAuthor);
			bk.setpDescription(bookDesc);
			bk.setpSeller(bookSeller);
			bk.setpPrice(bookPrice);
			bk.setpDiscount(bookDisc);
			bk.setPqty(bookQty);
			bk.setpImage(BookImage);
			bk.setpCategoryId(bookCatId);
		

			int book = bk.addBook();
			if(book==1) {
				resp.sendRedirect("admin/books.jsp");
			}
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
			
		
	}

}
