<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bean.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Résultat identification</title>
</head>
<body>
<form method="get" action="ServletDec">
<%
User u=(User) session.getAttribute("utilisateur") ;
%>
<h1>Informations utilisateur</h1>
<ul>
<li>Login:<%= u.getLogin() %></li>
<li>Mot de passe:<%= u.getPwd() %></li>
</ul>
<button >Déconnexion</button>
</form>
</body>
</html>