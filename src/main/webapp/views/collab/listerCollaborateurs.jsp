<%@page import="dev.sgp.entite.Collaborateur"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-3.3.7-
dist/css/bootstrap.css">
<title>SGP - App</title>
</head>
<body>
	<h1>Les collaborateurs</h1>
	<h2>La liste</h2>
	<a href="<%=request.getContextPath()%>/views/collab/creerCollaborateurs.jsp" class="btn btn-primary">Ajouter un nouveau collaborateur</a>
	<ul>
		<%
			List<Collaborateur> listeNoms = (List<Collaborateur>) request.getAttribute("listeCollabs");
		%>
		<div class="ml-2 card" style="width: 24rem">
        <%
            for (int i = 0; i < listeNoms.size(); i++) {
                Collaborateur collab = listeNoms.get(i);
	        %>
	        <h5 class="card-header"><%=collab.getNom()%><%=collab.getPrenom()%></h5>
	        <div class="card-body form-group row">
	                
	          <img src="<%=collab.getPhoto()%>" alt="Photo" class="col">
	          <div class="col">
	            <p class="card-text">Date de naissance : <%=collab.getDateNaissance()%></p>
	            <p class="card-text">Adresse : <%=collab.getAdresse()%></p>
	            <p class="card-text">Email : <%=collab.getEmailPro()%></p>
	            <p class="card-text">Numéro de sécurité sociale : <%=collab.getNumeroSecu()%></p>      
	          </div>
	        </div>
	        <div class="w-100"></div>
	        <div align="right" class="mr-2">
	          <a href="<%=request.getContextPath()%>/views/collab/editCollaborateur.jsp" class="btn btn-primary">Éditer</a>
	        </div>   
	      
	        <%
	        }
	        %>
        </div>
	</ul>
</body>
</html>