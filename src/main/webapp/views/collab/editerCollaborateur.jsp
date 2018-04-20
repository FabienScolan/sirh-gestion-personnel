<%@page import="dev.sgp.entite.Collaborateur"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Modifier collaborateur</h1>
	<form method="post"
		action="<%=request.getContextPath()%>/collaborateurs/modifier">
		<div class="block">
			<label>Nom : </label></label><input type="text" name="nom" value=""><br>
		</div>
		<div class="block">
			<label>Pr&eacutenom : </label><input type="text" name="prenom"
				value=""><br>
		</div>
		<div class="block">
			<label>Date de naissance : </label><input type="Date"
				name="dateNaissance" value=""><br>
		</div>
		<div class="block">
			<label>Adresse : </label><input type="text" name="adresse" value=""><br>
		</div>
		<div class="block">
			<label>Num&eacutero de s&eacutecurit&eacute sociale : </label><input
				type="text" name="numSecu" value=""><br>
		</div>
		<input type="submit" value="Modifier">
	</form>
</body>
</html>