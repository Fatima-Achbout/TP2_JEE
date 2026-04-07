<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.Reservation, java.util.List" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des réservations - Gestion des réservations</title>
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <div class="container py-5">
        <div class="card shadow-sm border-0 rounded-4">
            <div class="card-header bg-white border-bottom-0 pt-4">
                <div class="d-flex align-items-center justify-content-between">
                    <h4 class="fw-bold text-primary mb-0">Liste des réservations</h4>
                    <span class="badge bg-primary rounded-pill px-3 py-2">
                        <%
                            List<Reservation> listeReservations = (List<Reservation>) session.getAttribute("listeReservations");
                            int count = (listeReservations != null) ? listeReservations.size() : 0;
                            out.print(count + " réservation(s)");
                        %>
                    </span>
                </div>
                <hr class="mt-3">
            </div>
            
            <div class="card-body p-4">
                <%
                    // Je récupère la liste des réservations
                    List<Reservation> listeReservations2 = (List<Reservation>) session.getAttribute("listeReservations");
                    
                    if (listeReservations2 == null || listeReservations2.isEmpty()) {
                        out.println("<div class='text-center py-5'>");
                        out.println("<p class='text-muted fs-5 mb-3'>⚠️ Aucune réservation pour le moment.</p>");
                        out.println("<a href='ajouterReservation.jsp' class='btn btn-primary'>+ Ajouter une réservation</a>");
                        out.println("</div>");
                    } else {
                        out.println("<div class='table-responsive'>");
                        out.println("<table class='table table-bordered table-hover align-middle'>");
                        out.println("<thead class='table-primary'>");
                        out.println("<tr class='text-center'>");
                        out.println("<th>Client</th>");
                        out.println("<th>Téléphone</th>");
                        out.println("<th>E-mail</th>");
                        out.println("<th>Type</th>");
                        out.println("<th>Prix</th>");
                        out.println("</tr>");
                        out.println("</thead>");
                        out.println("<tbody>");
                        
                        for (Reservation r : listeReservations2) {
                            out.println("<tr>");
                            out.println("<td class='fw-semibold'>" + r.getNom() + " " + r.getPrenom() + "</td>");
                            out.println("<td>" + r.getTelephone() + "</td>");
                            out.println("<td>" + r.getEmail() + "</td>");
                            out.println("<td><span class='badge bg-secondary'>" + r.getType() + "</span></td>");
                            out.println("<td class='fw-bold text-success'>" + r.getPrix() + " DH</td>");
                            out.println("</tr>");
                        }
                        
                        out.println("</tbody>");
                        out.println("</table>");
                        out.println("</div>");
                    }
                %>
            </div>
            
            <div class="card-footer bg-white border-top-0 pb-4 pt-0 text-center">
                <div class="d-flex justify-content-center gap-3">
                    <a href="index.jsp" class="btn btn-outline-secondary px-4">
                        ← Retour à l'accueil
                    </a>
                    <a href="ajouterReservation.jsp" class="btn btn-success px-4">
                        + Ajouter une autre réservation
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>