<%-- 
    Document   : profilo
    Created on : May 4, 2017, 8:03:46 PM
    Author     : Davide
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Questa pagina contiene un profilo Nerdbook
-->
<html>
    <head>
        <title>NERDBOOK: Profilo</title>
        <meta name="keywords" content="HTML, Meta Tags, Metadata" />
        <meta name="description" content="Pagina profilo Nerdbook." />
        <meta name="author" content="Davide Deidda" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <c:set var="nav" value="descr&log" scope="request"/>
        <jsp:include page="header.jsp"/>
        
        
        <div id="sidebar1">
            <c:set var="sidebar" value="users" scope="request"/>
            <jsp:include page="sidebar.jsp"/>     
            </div>

            <div id="sidebar2">
            <c:set var="sidebar" value="helpProfile" scope="request"/>
            <jsp:include page="sidebar.jsp"/> 
            </div>
        <div id="divBody">
            <div id="divBody">
            <div id="nerdfinder">
                <input id="searchField" type="text" placeholder="Nerd Finder" value="">
                <button id="searchNerd">Gotta catch'em all!</button>
            </div>
            <div id="usersList">
                <c:forEach var="user" items="${utenti}">
                    <div class="user">
                        <div class="profilePic">
                            <img alt="Foto Profilo" src="${user.imgprofilo}">
                        </div>
                        <div class="userData">
                            <h2>${user.nome}</h2>
                            <a href="index.html?user=${gatto.id}">Link al profilo</a>
                        </div>
                    </div>
                </c:forEach>
            </div>

        </div>
            
            
        </div>
        
            <jsp:include page="footer.jsp"/>
    </body>
</html>
