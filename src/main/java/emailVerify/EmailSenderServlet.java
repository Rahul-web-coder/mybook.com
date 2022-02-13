package emailVerify;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userBean.User;




@WebServlet("/emailCheck")
public class EmailSenderServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession(false);
		String email = (String) session.getAttribute("email");
		sendOTP(req, resp, email);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		PasswordEncoder encode = new PasswordEncoder();
		String username= req.getParameter("username");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String address = req.getParameter("address");
		String password = req.getParameter("password");
		String encryptedPassword = encode.Encoder(password);
		
		HttpSession session = req.getSession();
		session.setAttribute("username", username);
		session.setAttribute("email", email);
		session.setAttribute("contact", contact);
		session.setAttribute("address", address);
		session.setAttribute("password", encryptedPassword);
		
		
		sendOTP(req, resp, email);
	}	
	
	public static void sendOTP(HttpServletRequest req, HttpServletResponse resp, String email) throws ServletException, IOException
	{
		HttpSession session = req.getSession(false);
		int t=0;
		User u =new User();
		try {
			t=u.check_duplicate_user(email);
			if(t==0) {
				Random rand = new Random();
				int otp = rand.nextInt(900000) + 100000;
				session.setAttribute("otp",otp);
				String mes = "Your OTP is "+otp;
				final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
				try
				{
				   	String to=email;//change accordingly
					//Get the session object
				   	Properties props = System.getProperties();
				     props.setProperty("mail.smtp.host", "smtp.gmail.com");
				     props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
				     props.setProperty("mail.smtp.socketFactory.fallback", "false");
				     props.setProperty("mail.smtp.port", "465");
				     props.setProperty("mail.smtp.socketFactory.port", "465");
				     props.put("mail.smtp.auth", "true");
				     props.put("mail.debug", "true");
				     props.put("mail.store.protocol", "pop3");
				     props.put("mail.transport.protocol", "smtp");
				     
					Session ses = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("ahmedsiddiqui4799@gmail.com","77@firdaus77");//Put your email id and password here
						}
					});
					//compose message
					try {
						MimeMessage message = new MimeMessage(ses);
						message.setFrom(new InternetAddress("ahmedsiddiqui4799@gmail.com"));//change accordingly
						message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
						message.setSubject("Nice to meet u");
						message.setText(mes);
						//send message
						Transport.send(message);
						System.out.println("message sent successfully");
						resp.sendRedirect("otp.jsp");
					} 
					catch (MessagingException e) {
						throw new RuntimeException(e);
					}

				}
				catch (IOException e)
				{
					e.printStackTrace();
				}
				
			}
			else {
				RequestDispatcher rd = req.getRequestDispatcher("signIn.jsp");
				req.setAttribute("mseg", "Already Email or Number Registered");
				rd.forward(req, resp);
			}
		
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
}