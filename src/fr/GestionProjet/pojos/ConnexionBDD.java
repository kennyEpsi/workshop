
package fr.GestionProjet.pojos;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnexionBDD {
	
	String url = "jdbc:mysql://localhost:3306/workshop2?useSSL=false";
	String user = "root";
	String mdp = "";
	
	Connection connexion = null;
	Statement state = null;
	PreparedStatement ps =  null;
	ResultSet result = null;
	CallableStatement cs = null;
	
	public void connexion() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connexion = DriverManager.getConnection(url, user, mdp);
			state = connexion.createStatement();
			result = state.executeQuery("SELECT * FROM utilisateur");

			while (result.next()) {
				int id = result.getInt("ID");
				String nom = result.getString("UTI_NOM");
				String prenom = result.getString("UTI_PRENOM");

				System.out.println("Nom=" + nom + ", " + "Prenom=" + prenom + ", " + "ID = " + id);
			}
			result.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(ClassNotFoundException e) {
			
		}
		finally {
			try {
				if (connexion != null)
					connexion.close();
				if (result != null)
					result.close();
				if (state != null)
					state.close();
				if (ps != null)
					ps.close();
				if (cs != null)
					cs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}

