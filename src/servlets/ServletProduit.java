package servlets;

import javax.servlet.http.HttpServlet;
import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletProduit extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		/*
		 * R�cup�ration des donn�es saisies, envoy�es en tant que param�tres de
		 * la requ�te GET g�n�r�e � la validation du formulaire
		 */
           String test =request.getParameter("test") ;
		/*String prix =request.getParameter("prix");
		String couleur = request.getParameter("couleur");
		String taille = request.getParameter("taille");
		String quantite= request.getParameter("quantite");
		String description = request.getParameter("desc");

		
		
		 /* Cr�ation du bean Client et initialisation avec les donn�es r�cup�r�es
		 */
		/*Produit p = new Produit();
		p.setPrix(prix);
		p.setCouleur(couleur);
		p.setTaille(taille);
	p.setQuantite(quantite);
		p.setDescription(description); */

		/* Ajout du bean et du message � l'objet requ�te */
		//request.setAttribute("message", message);
		//request.setAttribute("produit",p);
          request.setAttribute("test",test);

		/* Transmission � la page JSP en charge de l'affichage des donn�es */
		this.getServletContext().getRequestDispatcher("/afficherProduit.jsp").forward(request,response);

	}
	

}
