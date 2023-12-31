<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="ma.school.beans.Machine"%>
<%@page import="ma.school.service.MachineService"%>
<%@page import="ma.school.beans.Marque"%>
<%@page import="ma.school.service.MarqueService"%>
<%@page import="java.util.Date"%>
<%@page import="ma.school.beans.Etudiant"%>
<%@page import="ma.school.service.EtudiantService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="script/script.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style/css1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="template/header.jsp" %>
        <%@include file="template/menu.jsp" %>
        <div class="content">
            <form method="GET" action="MachineController">
                <%
                    MachineService mms = new MachineService();
                %>
                <fieldset>
                    <c:if test="${machine!=null}">
                        <input name="machineId" type="hidden" value="${machine.id}" />
                    </c:if>
                    <legend>Informations Machine ${machine.id}</legend>
                    <table border="0">
                        <tr>
                            <td>Reference</td>
                            <td><input id="ref" type="text" name="ref" value=""  required=""/></td>
                        </tr>
                        <tr>
                            <td>Prix</td>
                            <td><input id="prix" type="text" name="prix" value="" required="" /></td>
                        </tr>
                        <tr>
                            <td>Marque</td>
                            <td>
                                <select id="marque" name="marque">
                                    <%
                                        MarqueService ms = new MarqueService();
                                        for (Marque m : ms.findAll()) {
                                    %>
                                    <option value="<%=m.getId()%>"><%=m.getLibelle()%></option>
                                    <%}%>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Date Achat</td>
                            <td><input id="date" type="date" name="dateAchat" value="" required="" /></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td>
                                <c:if test="${machine == null}">
                                    <input name="op" type="submit" value="Envoyer" />
                                </c:if>
                                <c:if test="${machine != null}">
                                    <input name="op" type="submit" value="Modifier" />
                                </c:if>                           
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
            <%
            %>
            <fieldset>
                <legend>Liste des Machines</legend>

                <table border="1" class="tab">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Reference <br>
                            <th>Prix</th>
                            <th>Marque</th>
                            <th>Date d'achat</th>

                            <th>Supprimer</th>
                            <th>Modifier</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Machine mm : mms.findAll()) {
                        %>
                        <tr>
                            <td><%=mm.getId()%></td>
                            <td><%=mm.getReference()%></td>
                            <td><%=mm.getPrix()%></td>
                            <td><%=mm.getMarque().getLibelle()%></td>
                            <td><%=mm.getDateAchat()%></td>

                            <td><a class="bndelete" href="javascript:void(0);" onclick="confirmDel('<%=mm.getId()%>', '<%=mm.getReference()%>','Machine')">Supprimer</a></td>
                            <td><a class="bnupdate" href="MachineController?op=update&id=<%=mm.getId()%>">Modifier</a></td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>

            </fieldset>
        </form>            
</body>
</html>
