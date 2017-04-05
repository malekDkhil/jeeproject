package bean;

public class Produit {
	private String prix;
	private String description ;
	private String couleur ;
	private String taille;
	private String quantite;

	public Produit() {
		
	}
	
	public Produit(String prix, String description, String couleur, String taille, String quantite) {
		
		this.prix = prix;
		this.description = description;
		this.couleur = couleur;
		this.taille = taille;
		this.quantite = quantite;
	}
	public String getPrix() {
		return prix;
	}

	public void setPrix(String prix) {
		this.prix = prix;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCouleur() {
		return couleur;
	}

	public void setCouleur(String couleur) {
		this.couleur = couleur;
	}

	public String getTaille() {
		return taille;
	}

	public void setTaille(String taille) {
		this.taille = taille;
	}

	public String getQuantite() {
		return quantite;
	}

	public void setQuantite(String quantite) {
		this.quantite = quantite;
	}

	

}
