<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="bean.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Fashonista</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
<script src="lib/angular.min.js"></script>
</head>


<body>

	<%
		User u = (User) session.getAttribute("utilisateur");
	%>
	<header id="header"><!--header-->
	<div class="header_top">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href="#"><i class="fa fa-phone"></i> +216 71 700
									000</a></li>
							<li><a href="#"><i class="fa fa-envelope"></i>
									Fashonista@mail.com </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="header-middle">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="logo pull-left">
						<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
					</div>

				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<%
								if (u != null) {
							%>
							<li>
							<li><a href="#"><i class="fa fa-user"></i><%=u.getLogin()%></a></li>
							<%
								}
							%>

							<li><a href="panier.jsp"><i class="fa fa-shopping-cart"></i>
									panier</a></li>
							<%
								if (u == null) {
							%>
							<li><a href="connexion.jsp"><i class="fa fa-lock"></i>

									Connexion</a></li>
							<%
								}
							%>


							<%
								if (u != null) {
							%>
							<li><a href="ServletDec"><i class="fa fa-lock"></i>

									déconnexion</a></li>
							<%
								}
							%>



						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="header-bottom">
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Navigation </span> <span class="icon-bar"></span>
								<span class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.html" class="active">Accueil</a></li>
								<li class="dropdown"><a href="#">Shopping<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="shop.html">Produits</a></li>
										<li><a href="login.html">Connexion</a></li>
									</ul>
								<li><a href="contact-us.html">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Recherche" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<section id="form">

	<div class="container">

		<div class="row">
			<div class="col-sm-4 col-sm-offset-1">
				<div class="login-form">
					<h2>Connexion</h2>
					<form method="post" action="ServletUser">
					<form name="myForm" ng-submit="submit()" novalidate>
						<input placeholder="login utilisateur" name="loginuser" required
									ng-minlength="2" ng-maxlength="30" /> 
									<div ng-messages="myForm.loginuser.$error"
									ng-messages-include="erreur.jsp" ng-if="myForm.$submitted"></div>
									<input
							type="password" placeholder="Mot de passe" name="mdpuser" required
									ng-minlength="2" ng-maxlength="30" />
									<div ng-messages="myForm.mdpuser.$error"
									ng-messages-include="erreur.jsp" ng-if="myForm.$submitted"></div>
						<button type="submit" class="btn btn-default">Se
							connecter</button>
						<p>${message}</p>
					</form>
				</div>
			</div>


			<div class="col-sm-1">
				<h2 class="or">ou</h2>
			</div>
			<div class="col-sm-4">
				<div class="signup-form">
					<h2>Inscription</h2>
					<div ng-app="myApp">
						<form method="post" action="ServletInscription">

							<form name="myForm" ng-submit="submit()" novalidate>
								<input type="text" placeholder="Nom" name="nomuser" required
									ng-minlength="2" ng-maxlength="30" />
								<div ng-messages="myForm.nomuser.$error"
									ng-messages-include="erreur.jsp" ng-if="myForm.$submitted"></div>
									
								<input type="text" placeholder="Prénom" name="prenomuser"
									required ng-minlength="2" ng-maxlength="30" />
								<div ng-messages="myForm.prenomuser.$error"
									ng-messages-include="erreur.jsp" ng-if="myForm.$submitted"></div>
									
								<textarea placeholder="Adresse" name="adresseuser"
									ng-minlength="2" ng-maxlength="30"></textarea>
								<div ng-messages="myForm.adresseuser.$error"
									ng-messages-include="erreur.jsp" ng-if="myForm.$submitted"></div>

								<input type="email" placeholder="Adresse mail" name="emailuser"
									required />
								<div ng-messages="myForm.emailuser.$error"
									ng-messages-include="erreur.jsp" ng-if="myForm.$submitted"></div>
									
								<input type="text" placeholder="Login" name="loginuser" required />
								<div ng-messages="myForm.loginuser.$error"
									ng-messages-include="erreur.jsp" ng-if="myForm.$submitted"></div>
								
								<input type="password" placeholder="Mot de passe" name="mdpuser"
									required />
								<div ng-messages="myForm.mdpuser.$error"
									ng-messages-include="erreur.jsp" ng-if="myForm.$submitted"></div>
									

								<button type="submit" class="btn btn-default">S'inscrire</button>
							</form>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</section>


	<footer id="footer">
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-sm-2">
					<div class="companyinfo">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/defile1.jpg" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
							<p>DEFILE FEMME</p>
							<h2>15 MAI 2013</h2>
						</div>
					</div>


					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/defile2.jpg" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
							<p>DEFILE FEMME</p>
							<h2>27 NOVEMBRE 2013</h2>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/defile4.jpg" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
							<p>DEFILE HOMME</p>
							<h2>3 Janvier 2014</h2>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/defile3.jpg" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
							<p>DEFILE FEMME</p>
							<h2>5 Juin 2015</h2>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="address">
						<img src="images/home/map.png" alt="" />
						<p>2 Rue Abourraihan Al Bayrouni, Ariana</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<p class="pull-left">Copyright © 2015 Fashonista Inc. All rights
					reserved.</p>
				<p class="pull-right">
					Designed by <span><a target="_blank"
						href="http://www.isi.rnu.tn">L3SIL02</a></span>
				</p>
			</div>
		</div>
	</div>
	</footer>

	<script>
		var myApp = angular.module("myApp", []);

		myApp.controller("formCtrl", [ "$scope", function($scope) {

			$scope.submit = function() {

				if ($scope.myForm.$valid) {
					alert("Form Submitted!");
				}
			}

		} ]);
	</script>

	<script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>
</body>
</html>