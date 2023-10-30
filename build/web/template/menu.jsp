<%-- 
    Document   : menu
    Created on : 18 oct. 2019, 12:11:54
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
    </head>
    <style>
        .navbar {
            background-color: #444;
            padding: 10px 0;
            text-align: center;
        }

        .navbar ul {
            list-style-type: none;
            padding: 0;
        }

        .navbar li {
            display: inline;
            margin: 0 20px;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
        }

        .navbar a:hover {
            text-decoration: underline;
        }
    </style>
    <body>
        <div class="navbar">
            <ul>
                <li><a class="active" href="graphe.jsp">Graphe Machine par marques</a></li>
                <li><a href="etudiantForm.jsp">Gestion des etudiants</a></li>
                <li><a href="marqueForm.jsp">Gestion des marques</a></li>
                <li><a href="machineForm.jsp">Gestion des machines</a></li>
                <li><a href="machineByMarqueForm.jsp">Machines par marque</a></li>
                <li><a href="machineByReferenceForm.jsp">Machines par reference</a></li>

            </ul>
        </div>
    </body>
</html>
<!--<ul>
    <li><a class="active" href="#home">Home</a></li>
    <li><a href="etudiantForm.jsp">Gestion des etudiants</a></li>
    <li><a href="marqueForm.jsp">Gestion des marques</a></li>
    <li><a href="machineForm.jsp">Gestion des machines</a></li>
    <li><a href="machineByMarqueForm.jsp">Machines par marque</a></li>

</ul>-->