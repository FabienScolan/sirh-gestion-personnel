package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// recupere la valeur d'un parametre dont le nom est departement
		String matriculeParam = req.getParameter("matricule");
		String titreParam = req.getParameter("titre");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		resp.setContentType("text/html");
		// code HTML ecrit dans le corps de la reponse
		if (matriculeParam == null || titreParam == null || nomParam == null || prenomParam == null) {
			// resp.getWriter().write("Un matricule est attendu");
			String erreurParams = "";
			if (matriculeParam == null)
				erreurParams += "matricule = null ";
			if (titreParam == null)
				erreurParams += "titre = null ";
			if (nomParam == null)
				erreurParams += "nom = null ";
			if (prenomParam == null)
				erreurParams += "prenom = null ";

			resp.sendError(400, "Les paramètres suivants sont manquants : " + erreurParams);
		} else {
			resp.setStatus(201);
			resp.getWriter().write("<h1>Edition de collaborateur</h1>"
					+ "Création d'un collaborateur avec les informations suivantes : Matricule : " + matriculeParam
					+", titre = " + titreParam +", prenom = " + prenomParam +", nom = " + nomParam);
		}
	}

}
