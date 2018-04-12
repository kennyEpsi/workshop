package fr.GestionProjet.pojos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Utilisateur {
	
	String url = "jdbc:mysql://localhost:3306/workshop2?useSSL=false";
	String user = "root";
	String mdp = "";
	
	Connection connexion = null;
	PreparedStatement ps =  null;
	ResultSet result = null;
	
	public String getEmail(String pMail) {
		String mail = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connexion = DriverManager.getConnection(url, user, mdp);
			ps = connexion.prepareStatement("SELECT * FROM etudiant WHERE ETU_EMAIL = ?");
			ps.setString(1,pMail);
			result = ps.executeQuery();
			while (result.next()) {
				mail = result.getString("ETU_EMAIL");
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
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return mail; 
	}
	
	public String getMotDePasse(String pMotDePasse) {
		String password = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connexion = DriverManager.getConnection(url, user, mdp);
			ps = connexion.prepareStatement("SELECT * FROM etudiant WHERE ETU_MDP = ?");
			ps.setString(1,pMotDePasse);
			result = ps.executeQuery();
			while (result.next()) {
				password = result.getString("ETU_MDP");
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
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return password;
	}
	
	public String getMotDePasseOublie(String pMail) {
		String password = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connexion = DriverManager.getConnection(url, user, mdp);
			ps = connexion.prepareStatement("SELECT * FROM etudiant WHERE ETU_EMAIL = ?");
			ps.setString(1,pMail);
			result = ps.executeQuery();
			while (result.next()) {
				password = result.getString("ETU_MDP");
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
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return password;
	}
}
