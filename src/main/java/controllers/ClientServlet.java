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

@WebServlet("/ClientServlet")
public class ClientServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        //  kan recuperi les info tape
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        
        
        Client nouveauClient = new Client(nom, prenom, telephone, email);
        
       
        HttpSession session = request.getSession();
        
        
        List<Client> listeClients = (List<Client>) session.getAttribute("listeClients");
        
        // ila makantch la lsit creeiha
        if (listeClients == null) {
            listeClients = new ArrayList<>();
        }
        
        
        listeClients.add(nouveauClient);
        
        
        session.setAttribute("listeClients", listeClients);
        
       
        response.sendRedirect("listeClients.jsp");
    }
}