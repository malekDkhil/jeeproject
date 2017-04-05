<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>produit</title>
</head>
<body>
<form method="get" action="ServletProduit">

entrez valeur :<input type="text" name="test" >
<div id="desc">desciprtion du produit</div>
<span name="prix">25</span>
<div id="div1">
<label for="div1"> couleur</label>
<br>

<select name="couleur" >
   <option value="valeur1">noire</option>
   <option value="valeur2">gris</option>
   <option value="valeur3">rouge</option>
</select>

</div>
<div id="div2">
<label for="div2"> taille</label>
<br>

<select name="taille" >
   <option value="valeur1">S</option>
   <option value="valeur2">M</option>
   <option value="valeur3">L</option>
</select>
</div>
<div id="div3">
<label for="div3"> quantite</label><br>

<select name="quantite" >
   <option value="valeur1">1</option>
   <option value="valeur2">2</option>
   <option value="valeur3">3</option>
    <option value="valeur4">4</option>
   <option value="valeur5">5</option>
   <option value="valeur6">6</option>
   
</select>
</div>

<br>
<input type="submit" value="ajouter au panier" >

</form>
</body>
</html>