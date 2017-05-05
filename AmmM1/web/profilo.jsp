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
            
            <div id="profilo" class="inpForm">
                <p id="intro">COMPILA IL TUO PROFILO!</p>
                <form>
                    <div class='section'>
                    <p id='name'>Nome:</p>
                    <input class='profileBox' type="text" name="nome">
                    </div>
                    <div class='section'>
                    <p id='surnome'>Cognome:</p>
                    <input class='profileBox' type="text" name="cognome">
                    </div>
                    
                    <div class="section">
                    <p id='urlimm'>Carica la tua immagine profilo da URL:</p>
                    <input class='profileBox' type="url" name="imgProfilo">
                    </div>
                    <div class="section">
                    <p id='dob'>Inserisci la tua data di nascita:</p>
                    <input class='profileBox' type="date" name="dob" >
                    </div>
                    <div class="section">
                    <p id='shout'>Inserisci il tuo grido di battaglia!</p>
                    <textarea class='profileBox' rows="4" cols="40" name="motto" id="motto">Inserisci il tuo grido di battaglia!</textarea>
                    </div>
                    <div class="section">
                    <p id='name'>Username:</p>
                    <input class='profileBox' type="text" name="username">
                    </div>
                    <div class="section">
                    <p id='password1box'>Scegliere una password:</p>
                    <input class='profileBox' type="password" name="psw" id='psw'>
                    </div>
                    <div class="section">
                    <p id='password2box'>Ridigitare la password:</p>
                    <input class='profileBox' type="password" name="psw2">
                    </div>
                    <button type="submit" id="button">Aggiorna profilo</button>
                    
                </form>
            </div>
            
        </div>
        
            <jsp:include page="footer.jsp"/>
    </body>
</html>
