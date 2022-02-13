package contactServlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import contactBean.Contact;

@WebServlet("/Contactservlet")
public class ContactServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name= req.getParameter("name");
        String email= req.getParameter("email");
        String mobile= req.getParameter("mobile");
        String subject= req.getParameter("subject");
        String message= req.getParameter("message");
        
        Contact con = new Contact();
        
        con.setName(name);
        con.setEmail(email);
        con.setMobile(mobile);
        con.setSubject(subject);
        con.setMessage(message);
        
        try {
			int row = con.addUser();
			if(row==1) {
				req.setAttribute("mseg", "Success");
				System.out.println("Record Saved!!!");
				RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("mseg", "Not Success");
				RequestDispatcher rd = req.getRequestDispatcher("signUp.jsp");
				rd.forward(req, resp);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
	}
}
