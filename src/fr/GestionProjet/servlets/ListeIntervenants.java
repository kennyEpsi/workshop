package fr.GestionProjet.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.GestionProjet.pojos.Intervenant;
import fr.GestionProjet.pojos.Utilisateur;

/**
 * Servlet implementation class ListeIntervenants
 */
@WebServlet("/ListeIntervenants")
public class ListeIntervenants extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListeIntervenants() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("/WEB-INF/ListeIntervenants.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Utilisateur user = new Utilisateur();
		Intervenant intervenant = new Intervenant();
		
		user.updateToken(1);
		intervenant.updateToken(1);
		
        response.sendRedirect("/GestionProjet/ListeIntervenants");
	}

}
