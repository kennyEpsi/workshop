package fr.GestionProjet.servlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.GestionProjet.pojos.Utilisateur;

/**
 * Servlet implementation class Connexion
 */
@WebServlet("")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CHAMP_USERNAME = "username";
    private static final String CHAMP_PASS   = "pass";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connexion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub 
		this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter(CHAMP_USERNAME);
		String pass = request.getParameter(CHAMP_PASS);
		
		Utilisateur utilisateur = new Utilisateur();
		
		String email = utilisateur.getEmail(user);
		String pwd = utilisateur.getMotDePasse(pass);
		
		//String userTest = "test";
		//String mdpTest = "test";
	
		if (user.equals(email) && pass.equals(pwd)) {
			response.sendRedirect("/GestionProjet/accueil");
		} else {
				response.sendRedirect("/GestionProjet/");
		  }
	} 
}


