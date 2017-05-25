<%-- 
    Document   : login
    Created on : May 4, 2017, 8:03:27 PM
    Author     : Davide
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Questa pagina contiene il form per effettuare il login
-->
<html lang='it'>
    <head>
        <title>NERDBOOK: Login</title>
        <meta name="keywords" content="HTML, Meta Tags, Metadata" />
        <meta name="description" content="Pagina di login Nerdbook." />
        <meta name="author" content="Davide Deidda" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <c:set var="nav" value="fromlog" scope="request"/>
        <jsp:include page="header.jsp"/>
        
        
        <div id="sidebar1">
            <c:set var="sidebar" value="helpLogin" scope="request"/>
            <jsp:include page="sidebar.jsp"/>     
            </div>

            <div id="sidebar2">
            <c:set var="sidebar" value="users" scope="request"/>
            <jsp:include page="sidebar.jsp"/> 
            </div>
        <div id="divBody">
            
            <div id="loginPage" class="inpForm">
             <h1>LOGIN</h1>
             <form action="Login" method="post" id="login">
                    <div id='username'>
                        <h2>Inserisci l'username</h2>
                        <input id='usernameBox' type="text" name="username" placeholder="Username" required="required" />
                    </div>
                    <div id='password'>
                        <h2>Inserisci la password</h2>
                        <input id='passwordBox' type="password" name="password" placeholder="Password" required="required" />
                    </div>
                    <button type="submit">Effettua il login.</button>
                    <c:if test="${invalidData == true}">
                    <div id="invalidDataWarning">I dati inseriti non sono corretti</div>
                </c:if>
                </form>
            </div>
        </div>
        <footer>
            <div id ="footer">
                <p>Nerdbook © 2017 All rights reserved.</p>
            </div>
        </footer>
    </body>
</html>