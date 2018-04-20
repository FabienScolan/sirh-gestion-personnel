package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Departement;

public class DepartementService {
	List<Departement> departements = new ArrayList<>();
	
	public List<Departement> listerDepatements(){
		return departements;
	}
	public void sauvegarderDepartement(Departement dep) {
		departements.add(dep);
	}
}
