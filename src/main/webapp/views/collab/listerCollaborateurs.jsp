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
	<ul>
		<%
			List<Collaborateur> listeNoms = (List<Collaborateur>) request.getAttribute("listeCollabs");
			for (Collaborateur collab : listeNoms) {
		%>
		<li><%=collab.getNom()%></li>
		<%
			}
		%>
	</ul>
</body>
</html>