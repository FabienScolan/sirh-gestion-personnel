package dev.sgp.web;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class ListerCollaborateursController extends HttpServlet {
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	@Override
	/*
	 * protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	 * throws ServletException, IOException {
	 * resp.getWriter().write("Hello ListerCollaborateursController test modif"
	 * ); }
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
		req.setAttribute("listeCollabs", collabService.listerCollaborateurs());
		
		req.getRequestDispatcher("/views/collab/listerCollaborateurs.jsp").forward(req, resp);
	}

}
