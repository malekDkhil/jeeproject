<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="test" scope="request" class="bean.Produit"/>
<%-- Puis affichage des données enregistrées dans le bean "client" transmis
par la servlet --%>
<p>${test}</p>
<p>description : ${ p.description}</p>
<p>prix : ${ p.prix}</p>
<p>couleur : ${ p.couleur}</p>
<p>taille : ${ p.taille}</p>
<p>quantite : ${ p.quantite}</p>

</body>
</html>