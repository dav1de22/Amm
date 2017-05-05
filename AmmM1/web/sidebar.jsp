<%-- 
    Document   : sidebar
    Created on : May 4, 2017, 7:43:47 PM
    Author     : Davide
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%--
sidebar con utenti e gruppi
--%>
<c:if test="${sidebar=='users'}">
    <ul>
        <li >
            <h2>PERSONE</h2>
            <ul id="people">
                <li>Marco Fenice</li>
                <li>Massimo Dolore</li>
                <li>Nathan Drago</li>
            </ul>
        </li>
        <li id="groups">
            <h2>BUDDIES</h2>
            <ul>
                <li>Videogames</li>
                <li>Movies</li>

            </ul>
        </li>
    </ul>
</c:if>
             
                <c:if test="${sidebar=='brand'}">
                <h2>Brand</h2>
                <p>
                    Nerdbook prevede la possibilità per Brand e attività commerciali di avere una propria pagina personale
                    crea la tua ora!!!
                </p>
                </c:if>
                
                <c:if test="${sidebar=='subscribe'}">
                <h2>Brand</h2>
                <h3>ISCRIVITI ORA!</h3>
                <p>Benvenuto su NerdBook! Cosa aspetti? Iscriviti ora e incomincia a condividere le tue passioni!</p>
                </c:if>
                
                <c:if test="${sidebar=='sommario'}">
                <div id="sommario">
                <aside>
                <h2>Sommario</h2>
                <ol>
                    <li><a href="#Segnalibro1">Descrizione</a></li>
                    <li><a href="#Segnalibro2">La storia</a></li>
                    <li><a href="#Segnalibro3">Caratteristiche</a>
                        <ul>
                        <li>
                            <a href="#Segnalibro3-0">Novità e PlayOut</a>
                        </li>
                        <li><a href="#Segnalibro3-1">Sistema dei contatti</a>
                        </li>
                        <li><a href="#Segnalibro3-2">Autori famosi e pagine autenticate</a></li>
                    </ul>
                </ol>
                </aside>
                </div>
                </c:if>
                
                <c:if test="${sidebar=='helpProfile'}">
                <h2>Raccontaci di te</h2>
                <p>
                    Inserisci le informazioni per personalizzare il tuo profilo
                </p>
                <p>Scegli anche un password sicura. Noi di Nerdbook ci teniamo alla sicurezza del tuo profilo!</p>
                </c:if>
                
                <c:if test="${sidebar=='helpLogin'}">
                <h3>BENVENUTO</h3>
                <p>
                    Inserisci il tuo <strong>username</strong> e la <strong>password</strong>:
                </p>
                <p>Se non ricordi le tue credenziali puoi richiederla anche per email all'indirizzo ops@mindblank.com</p>
                </c:if>