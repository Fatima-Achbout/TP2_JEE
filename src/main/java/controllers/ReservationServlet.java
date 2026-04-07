package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Client;
import models.Reservation;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Je récupère ce que l'utilisateur a choisi
    		String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String type = request.getParameter("type");
        String prix = request.getParameter("prix");
        
        // 2. Je convertis l'index (string) en nombre
        
        
        
        // 3. Je récupère la session
        HttpSession session = request.getSession();
        
     
        
 
        
        // 6. Je crée la réservation
        Reservation nouvelleReservation = new Reservation(nom,prenom,telephone,email, type, prix);
        
        // 7. Je récupère la liste des réservations
        List<Reservation> listeReservations = (List<Reservation>) session.getAttribute("listeReservations");
        
        // 8. Si la liste n'existe pas, j'en crée une
        if (listeReservations == null) {
            listeReservations = new ArrayList<>();
        }
        
        // 9. J'ajoute la réservation
        listeReservations.add(nouvelleReservation);
        
        // 10. Je sauvegarde la liste
        session.setAttribute("listeReservations", listeReservations);
        
        // 11. Je redirige vers la liste des réservations
        response.sendRedirect("listeReservations.jsp");
    }
}