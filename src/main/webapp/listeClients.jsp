<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.Client, java.util.List" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des clients - Gestion des réservations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <div class="container py-5">
        <div class="card shadow-sm border-0 rounded-4">
            <div class="card-header bg-white border-bottom-0 pt-4">
                <h4 class="fw-bold text-primary mb-0">Liste des clients</h4>
                <hr class="mt-3">
            </div>
            
            <div class="card-body p-4">
                <%
                    List<Client> listeClients = (List<Client>) session.getAttribute("listeClients");
                    
                    if (listeClients == null || listeClients.isEmpty()) {
                %>
                    <div class="text-center py-5">
                        <p class="text-muted fs-5">Aucun client pour le moment.</p>
                        <a href="ajouterClient.jsp" class="btn btn-primary">+ Ajouter un client</a>
                    </div>
                <%
                    } else {
                %>
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead class="table-success">
                            <tr>
                                <th>Nom</th>
                                <th>Prénom</th>
                                <th>Téléphone</th>
                                <th>E-mail</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Client client : listeClients) {
                            %>
                            <tr>
                                <td><%= client.getNom() %></td>
                                <td><%= client.getPrenom() %></td>
                                <td><%= client.getTelephone() %></td>
                                <td><%= client.getEmail() %></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
                <%
                    }
                %>
            </div>
            
            <div class="card-footer bg-white border-top-0 pb-4 text-center">
            	<a href="index.jsp" class="btn btn-outline-secondary px-4">
                        ← Retour à l'accueil
                </a>
                <br></br>
                <a href="ajouterClient.jsp" class="btn btn-outline-secondary">
                    ← Retourner au formulaire d'ajout
                </a>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>