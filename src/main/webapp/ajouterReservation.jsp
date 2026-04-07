<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.Client, java.util.List" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des réservations - Ajouter une Reservation</title>
    <!-- Lien CDN Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body class="d-flex align-items-center justify-content-center vh-100">

    <!-- Carte principale -->
    <div class="card shadow-sm" style="width: 28rem; border-radius: 1rem;">
        
        <!-- En-tête de la carte : Espace client -->
        <div class="card-header bg-white border-bottom-0 pt-4 pb-0">
            <h5 class="card-title text-center fw-bold">Espace client</h5>
        </div>
        
        <!-- Corps de la carte : formulaire -->
        <div class="card-body p-4 pt-3">
             <div id="alertError" class="alert alert-danger d-none" role="alert">
                Ooops, erreur !!! Vous devez remplir tous les champs
            </div>
            
            <!-- Formulaire -->
     <form action="ReservationServlet" method="post" onsubmit="return verifierChamps()">
                <!-- Champ Nom -->
                <div class="mb-3">
                    <label for="nom" class="form-label">Nom</label>
                    <input type="text" class="form-control " id="nom" name="nom">
                </div>
                
                <!-- Champ Prénom -->
                <div class="mb-3">
                    <label for="prenom" class="form-label">Prénom</label>
                    <input type="text" class="form-control " id="prenom" name="prenom" >

                </div>
                
                <!-- Champ Téléphone -->
                <div class="mb-3">
                    <label for="telephone" class="form-label">Téléphone</label>
                    <input type="tel" class="form-control" id="telephone" name="telephone" >

                </div>
                
                <!-- Champ E-mail -->
                <div class="mb-4">
                    <label for="email" class="form-label">E-mail</label>
                    <input type="email" class="form-control" id="email" name="email" >

                </div>
                 <div class="mb-3">
                    <label for="type" class="form-label">Type</label>
                    <!-- AJOUTER id="type" et class="form-select" -->
                    <select name="type" id="type" class="form-select">
                        <option value="" selected disabled hidden>-- Choisissez un type --</option>
                        <option value="Standard">Standard (500 DH)</option>
                        <option value="Deluxe">Deluxe (800 DH)</option>
                        <option value="Suite">Suite (1200 DH)</option>
                    </select>
                </div>
                
                <div class="mb-4">
                    <label for="prix" class="form-label">Prix</label>
                    <!-- AJOUTER id="prix" -->
                    <input type="text" name="prix" id="prix" class="form-control" placeholder="Prix en DH">
                </div>
        
                
                <!-- Bouton Ajouter Client (pleine largeur) -->
                <button type="submit" class="btn btn-success w-100 py-2 fw-semibold"  >
                    Ajouter Reservation
                </button>
            </form>   
            <br><br>
        </div>
        
        <!-- Pied de carte : mention copyright -->
        <div class="card-footer bg-white border-top-0 text-center text-muted pb-3 pt-0 small">
            Application de gestion des réservations © 2026
        </div>
    </div>
     <script>
        function verifierChamps() {
            // Récupérer tous les champs
            const nom = document.getElementById('nom').value;
            const prenom = document.getElementById('prenom').value;
            const telephone = document.getElementById('telephone').value;
            const email = document.getElementById('email').value;
            const type = document.getElementById('type').value;
            const prix = document.getElementById('prix').value;
            
            // CORRECTION: === au lieu de =
            if (nom === '' || prenom === '' || telephone === '' || email === '' || type === '' || prix === '') {
                // Afficher l'alerte
                document.getElementById('alertError').classList.remove('d-none');
                return false; // Bloquer l'envoi
            } else {
                // Cacher l'alerte
                document.getElementById('alertError').classList.add('d-none');
                return true; // Autoriser l'envoi
            }
        }
    </script>
</body>
</html>