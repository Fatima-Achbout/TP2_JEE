package models;

public class Reservation {
    
    private Client client; 
    private String nom;
    private String prenom;
    private String telephone;
    private String email;
    private String type;    
    private String prix;    
    public Reservation() {
    }
    
    public Reservation(String nom,String prenom,String telephone,String email, String type, String prix) {
        this.nom=nom;
        this.prenom=prenom;
        this.telephone=telephone;
        this.email=email;
        this.type = type;
        this.prix = prix;
    }
    
    public String getNom() {
        return nom;
    }
    public String getPrenom() {
        return prenom;    
    }
    public String getTelephone() {
        return telephone;
    }
    public String getEmail() {
        return email;
    }    
    public String getType() {
        return type;
    }
    
    public String getPrix() {
        return prix;
    }
    
    public void setNom(String type) {
        this.nom = nom;
    }
    public void setPrenom(String type) {
        this.prenom = prenom;
    }
    public void setTelephone(String type) {
        this.telephone = telephone;
    }
    public void setEmail(String type) {
        this.email = email;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    
    public void setPrix(String prix) {
        this.prix = prix;
    }
}