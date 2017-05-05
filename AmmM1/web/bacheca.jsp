<%-- 
    Document   : bacheca
    Created on : May 4, 2017, 8:03:01 PM
    Author     : Davide
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--
Questa pagina contiene la bacheca Nerdbook
-->
<html>
    <head>
        <title>NERDBOOK: Bacheca</title>
        <meta name="keywords" content="HTML, Meta Tags, Metadata" />
        <meta name="description" content="Bacheca Nerdbook." />
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
            <c:set var="sidebar" value="brand" scope="request"/>
            <jsp:include page="sidebar.jsp"/> 
            </div>
       <div id="divBody">
           <%-- <c:forEach var="post" items="${post}"> --%>
                 <div id="posts">    
                <div class="post">
                    <p class="pname"><strong>${user.nome} ${user.cognome}</strong></p>
                    <img class="prpic" alt="Foto Profilo ${user.nome} ${user.cognome}" src="${user.imgprofilo}" width="120" height="141">
                    <p class="pcontent">${post.status}</p>
                    <c:if test="${post.postType == 'URL'}">
                            <a href="${post.content}">Post di ${post.user.nome} ${post.user.cognome}</a>
                        </c:if>
                        <c:if test="${post.postType == 'IMAGE'}">
                            <div class="postImg">
                            <img class= "postJpg" alt="Post con foto" src="${post.content}" width="240" height="281">
                            </div>
                        </c:if>
                    
                </div>         
                <%--</c:forEach>--%>
                        
                    
                <jsp:include page="footer.jsp"/>
            </div>
        </div>
    </body>
</html>
