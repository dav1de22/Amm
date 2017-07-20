<%-- 
    Document   : header
    Created on : April 14, 2017, 1:27:03 AM
    Author     : Davide
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<header>
            <div id="header">
                <div id="title">
                    <h1>Nerdbook </h1>
                </div>
                <nav>                  
                    <h3 id="navTitle">SHORTCUTS</h3>
                        <ol>
                            <c:if test="${nav=='descr&log'}">
                            <li><a href="descrizione.jsp">What's Nerdbook?</a></li>
                            <li><a href="login.jsp">Effettua il login</a></li>
                            </c:if>
                            <c:if test="${nav=='justlog'}">                           
                            <li><a href="login.jsp">Effettua il login</a></li>
                            </c:if>
                            <c:if test="${nav=='fromlog'}">                           
                            <li><a href="descrizione.jsp">What's Nerdbook?</a></li>
                            <li><a href="profilo.jsp">Profilo</a></li>
                            <li><a href="bacheca.jsp">Bacheca</a></li>
                            <li><a href="nerdfinder.jsp">Nerd Finder</a></li>
                            </c:if>
                        </ol>
                </nav>
            </div>          
        </header>