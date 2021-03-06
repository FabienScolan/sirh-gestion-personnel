package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZonedDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class EditerCollaborateurController extends HttpServlet {
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// recupere la valeur d'un parametre dont le nom est departement
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		String adresseParam = req.getParameter("adresse");
		String secuParam = req.getParameter("numSecu");
		LocalDate dateNaissParam = LocalDate.parse(req.getParameter("dateNaissance"));
		resp.setContentType("text/html");
		// code HTML ecrit dans le corps de la reponse
		if (/*matriculeParam == null || titreParam == null ||*/ nomParam == null || prenomParam == null) {
			// resp.getWriter().write("Un matricule est attendu");
			String erreurParams = "";
			/*if (matriculeParam == null)
				erreurParams += "matricule = null ";
			if (titreParam == null)
				erreurParams += "titre = null ";*/
			if (nomParam == null)
				erreurParams += "nom = null ";
			if (prenomParam == null)
				erreurParams += "prenom = null ";

			resp.sendError(400, "Les paramètres suivants sont manquants : " + erreurParams);
		} else {
			collabService.sauvegarderCollaborateur(new Collaborateur(null, nomParam, prenomParam, dateNaissParam,
					adresseParam, secuParam, nomParam + "." + prenomParam + "@societe.fr", null, ZonedDateTime.now()));
			
			req.setAttribute("listeCollabs", collabService.listerCollaborateurs());
			
			this.getServletContext().getRequestDispatcher("/views/collab/listerCollaborateurs.jsp").forward(req, resp);;
		}
	}

}
