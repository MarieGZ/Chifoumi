<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="fr.eni.javaee.chifoumi.bo.ChoixChifoumi"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Résultat de la partie</title>
</head>
<body>
<div align =center>
<%
		int choixJoueur = (int) request.getAttribute("choixJoueur");
		int choixServeur = (int) request.getAttribute("choixServeur");
		int resultat = (int) request.getAttribute("resultat");
	%>

	<h1>Résultat</h1>

	<h2>Vous avez joué :</h2>

	
	<%
		if (choixJoueur == ChoixChifoumi.PIERRE) {
	%>
	<img height="90" src="<%=request.getContextPath()%>/images/pierre.png" />
	<%
		} else if (choixJoueur == ChoixChifoumi.FEUILLE) {
	%>
	<img height="90" src="<%=request.getContextPath()%>/images/feuille.png" />
	<%
		} else if (choixJoueur == ChoixChifoumi.CISEAUX) {
	%>
	<img height="90" src="<%=request.getContextPath()%>/images/ciseaux.png" />
	<%
		} else {
			out.print("Merci de choisir une des propositions : Pierre, Feuille ou Ciseaux");
		}
	%>

	<h2>L'ordinateur a joué :</h2>

	
	<%
		if (choixServeur == ChoixChifoumi.PIERRE) {
	%>
	<img height="90" src="<%=request.getContextPath()%>/images/pierre.png" />
	<%
		} else if (choixServeur == ChoixChifoumi.FEUILLE) {
	%>
	<img height="90" src="<%=request.getContextPath()%>/images/feuille.png" />
	<%
		} else if (choixServeur == ChoixChifoumi.CISEAUX) {
	%>
	<img height="90" src="<%=request.getContextPath()%>/images/ciseaux.png" />
	<%
		}
	%>

	<h2>Résultat :</h2>
	
	<%
		if (resultat == 0) {
			out.write("EX AEQUO !");
		} else if (resultat == 1) {
			out.write("Vous avez gagné!");
		} else {
			out.write("L'ordinateur a gagné!");
		}
	%>
</div>
	<div align =right>
		<a href="<%=request.getContextPath()%>/jouer">Rejouer</a>
	</div>
	
</body>
</html>