<doctype html>
<style>
label {
	display: inline-block;
	width: 200px;
	text-align: left;
}
​
</style>
<html>
<head>
<title></title>
</head>
<body>
	<h1>Nouveau collaborateur</h1>
	<form method="post" action="<%=request.getContextPath()%>/collaborateurs/editer">
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
		<input type="submit" value="Cr&eacuteer">
	</form>

</body>

</html>