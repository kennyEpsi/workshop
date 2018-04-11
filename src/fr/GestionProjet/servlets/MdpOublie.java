package fr.GestionProjet.servlets;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * Servlet implementation class MdpOublie
 */
@WebServlet("/mdpOublie")
public class MdpOublie extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CHAMP_EMAIL = "email";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MdpOublie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("/WEB-INF/mdpOublie.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String destinataire = request.getParameter(CHAMP_EMAIL);
		String from = "a.charvet2@hotmail.fr";
		String host = "localhost";
		Properties properties = System.getProperties();
		properties.put("mail.transport.protocol", "smtp");
		properties.put("mail.smtp.host", "smtp.live.com");
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.auth", "true");
		
		Authenticator authenticator = new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("", "");
			}
		};
		
		Session session = Session.getDefaultInstance(properties);
		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(destinataire));
			message.setSubject("Mot de passe oublié");
			message.setText("Vous avez demandé votre mot de passe, le voici");
			
			Transport.send(message);
			response.sendRedirect("/GestionProjet/");
			
		} catch (MessagingException e) {
			// TODO: handle exception
		}
		
	}

}
