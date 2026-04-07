<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil - Gestion des réservations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex align-items-center justify-content-center vh-100">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                
                <!-- Carte simple -->
                <div class="card shadow-lg border-0 rounded-4 text-center">
                    
                    <div class="card-header bg-white border-bottom-0 pt-5">
                        <h1 class="display-5 fw-bold text-primary"> Bienvenue Dans l'application de gestion des réservations</h1>
                        <p class="text-muted mt-2">Dans l'application de gestion des réservations</p>
                        <hr class="my-4">
                    </div>
                    
                    <div class="card-body p-5">
                        <div class="d-grid gap-4">
                            <!-- Grand bouton Ajouter Client -->
                            <a href="ajouterClient.jsp" class="btn btn-primary btn-lg py-3 fs-4">
                                Ajouter un Client
                            </a>
                            
                            <!-- Grand bouton Ajouter Réservation -->
                            <a href="ajouterReservation.jsp" class="btn btn-success btn-lg py-3 fs-4">
                                Ajouter une Réservation
                            </a>
                        </div>
                    </div>
                    
                    <div class="card-footer bg-white border-top-0 pb-4">
                        <small class="text-muted">© 2026 - Gestion des réservations</small>
                    </div>
                </div>
                
               
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>