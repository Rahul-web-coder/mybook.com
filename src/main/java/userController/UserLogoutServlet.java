package userController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = "/Logout")
public class UserLogoutServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession(false);
		req.removeAttribute("m");
		httpSession.invalidate();
		resp.setHeader("Cache-Control","no-cache");
		resp.setHeader("Cache-Control","no-store");
		resp.setDateHeader("Expires", 0);
		//resp.sendRedirect("index.jsp");
		
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		rd.forward(req,resp);
		
	}
}
