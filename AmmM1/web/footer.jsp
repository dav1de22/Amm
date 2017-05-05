<%-- 
    Document   : footer
    Created on : May 4, 2017, 7:39:38 PM
    Author     : Davide
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<footer>
            <div id ="footer">
                <p>Nerdbook © 2017 All rights reserved. Sei Loggato come ${user.nome} ${user.cognome}<c:if test="${empty param.user}">
                    <a href="Login?logout=1">Logout</a>
                </c:if>
            </p>
            </div>
        </footer>