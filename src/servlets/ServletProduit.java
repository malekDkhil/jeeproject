package servlets;

import javax.servlet.http.HttpServlet;
import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletProduit extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		/*
		 * Récupération des données saisies, envoyées en tant que paramètres de
		 * la requête GET générée à la validation du formulaire
		 */
           String test =request.getParameter("test") ;
		/*String prix =request.getParameter("prix");
		String couleur = request.getParameter("couleur");
		String taille = request.getParameter("taille");
		String quantite= request.getParameter("quantite");
		String description = request.getParameter("desc");

		
		
		 /* Création du bean Client et initialisation avec les données récupérées
		 */
		/*Produit p = new Produit();
		p.setPrix(prix);
		p.setCouleur(couleur);
		p.setTaille(taille);
	p.setQuantite(quantite);
		p.setDescription(description); */

		/* Ajout du bean et du message à l'objet requête */
		//request.setAttribute("message", message);
		//request.setAttribute("produit",p);
          request.setAttribute("test",test);

		/* Transmission à la page JSP en charge de l'affichage des données */
		this.getServletContext().getRequestDispatcher("/afficherProduit.jsp").forward(request,response);

	}
	

}
