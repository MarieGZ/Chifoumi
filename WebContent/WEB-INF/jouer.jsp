<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="fr.eni.javaee.chifoumi.bo.ChoixChifoumi"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jouer au Chifoumi.</title>
</head>
<body>
	<div align=center>
		
<h1>Jouons au Chifoumi !</h1>
<br>
<p>Merci de cliquer sur l'élément que vous souhaitez jouer !<br>
La Pierre gagne les Ciseaux.<br>
La Feuille gagne la Pierre.<br>
les ciseaux gagnent la Feuille.<br>
<br>
</p>
	<a href="<%=request.getContextPath()%>/jouer?choix=<%=ChoixChifoumi.PIERRE%>">
		<img height="90" src="<%=request.getContextPath()%>/images/pierre.png" />
	</a><br>
	<a href="<%=request.getContextPath()%>/jouer?choix=<%=ChoixChifoumi.FEUILLE%>">
		<img height="90" src="<%=request.getContextPath()%>/images/feuille.png" />
	</a><br>
	<a href="<%=request.getContextPath()%>/jouer?choix=<%=ChoixChifoumi.CISEAUX%>">
		<img height="90" src="<%=request.getContextPath()%>/images/ciseaux.png" />
	</a><br>
	</div>
</body>
</html>