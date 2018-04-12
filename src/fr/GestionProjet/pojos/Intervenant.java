package fr.GestionProjet.pojos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Intervenant {
	
	String url = "jdbc:mysql://localhost:3306/workshop2?useSSL=false";
	String user = "root";
	String mdp = "";
	
	Connection connexion = null;
	PreparedStatement ps =  null;
	ResultSet result = null;
	
	public void updateToken(int pId) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connexion = DriverManager.getConnection(url, user, mdp); 
			ps = connexion.prepareStatement("UPDATE INTERVENANT SET INT_TOKEN = INT_TOKEN + 1 WHERE INT_ID = ?");
			ps.setInt(1,pId);
			result = ps.executeQuery();
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
	}

}
