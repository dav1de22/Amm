<%-- 
    Document   : descrizione
    Created on : May 4, 2017, 8:03:14 PM
    Author     : Davide
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Questa pagina contiene la descrizione del social Network NERDBOOK.
-->
<html lang="it">
    <head>
        <title>BENVENUTO SU NERDBOOK</title>
        <meta name="keywords" content="HTML, Meta Tags, Metadata" />
        <meta name="description" content="Descrizione Nerdbook." />
        <meta name="author" content="Davide Deidda" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <c:set var="nav" value="justlog" scope="request"/>
        <jsp:include page="header.jsp"/>
        
        
        <div id="sidebar1">
            <c:set var="sidebar" value="subscribe" scope="request"/>
            <jsp:include page="sidebar.jsp"/>     
            </div>

            <div id="sidebar2">
            <c:set var="sidebar" value="sommario" scope="request"/>
            <jsp:include page="sidebar.jsp"/> 
            </div>
        <div id="divBody">
        
            
            <div class="textb"  id="descrizione">
            <h2 id="Segnalibro1">Descrizione
            </h2>
        
        <p>
            <strong>Nerdbook</strong> è il social network di riferimento per chi vuole condividere passioni, momenti, video su tutto ciò che riguarda l'universo NERD!
            L'iscrizione al sito è rapida e gratuita, e una volta completata si può incominciare da subito ad entrare in contatto con altre persone che condividono le vostre stesse passioni!
        </p>
            </div>
        
            <div class="textb"  id="storia">
            <h2 id='Segnalibro2'>
                La storia
        </h2>
        
        <p>
            Il servizio è stato lanciato il 17 Febbraio 2014, in fase test Alpha e solo su invito.
            Il giorno seguente, gli utenti esistenti sono stati autorizzati a invitare gli amici al servizio per creare il proprio account,
            a condizione che i nuovi utenti svolgessero un test per qualificarsi con lo status di "nerd".
            Il 14 settembre 2014 apre la beta pubblica, 
            le iscrizioni diventano quindi libere non è quindi più necessario l'invito.
        </p>
            </div>
            
        <div class="textb"  id="caratteristiche">   
        <h2 id='Segnalibro3'>
                Caratteristiche
            
        </h2>
        <h3 id='Segnalibro3-0'>
                Novità e PlayOut
            
        </h3>
        <p>
            <b>Nerdbook</b> include importanti novità rispetto ad altre reti sociali più affermate, introducendo nuovi contenuti multimediali, 
            infatti offre la possibilità di avviare sessioni streaming mentre si gioca, tramite ad esempio <strong>"PlayOut"</strong>; 
            stanze virtuali dove è possibile condividere sessione di gioco e parlare allo stesso tempo con tutti i componenti presenti all'interno,
            tramite microfono e webcam.
            Sempre tramite la chat gli utenti hanno la possibilità di scambiarsi replay, video o articoli provenienti da altri siti.
        </p>
        
        <h3 id='Segnalibro3-1'>
                Il sistema dei contatti
            
        </h3>

        <p> 
            Il sistema dei contatti è organizzato e suddiviso in <strong>"compari" ("buddies")</strong> liberamente creabili e modificabili dall'utente.
            In modo predefinito sono già presenti gruppi che suddividono i buddies in base alle passioni in comune <em>"gaming", "movies", "comics", "music", "persone che seguo"</em>.
            Tale sistema mira a realizzare un buon livello di privacy, accumunando le persone in base ai loro interessi.
            Questa funzione permette di creare dei feed semplicemente dopo aver inserito in un box l'argomento interessato. 
            Si creerà un flusso di contenuti inerenti all'argomento scelto, che saranno poi condivisibili con i nostri amici.
        </p>
        
        <h3 id='Segnalibro3-2'>
                Autori famosi e pagine autenticate
            
        </h3>
        <p>
        <b>Nerdbook</b>, come Facebook e Twitter, dispone di un sistema di identificazione delle persone famose, visibile tramite un'icona con un visto accanto al nome del profilo.
            <b>Nerdbook</b> prevede la possibilità per Brand e attività commerciali di avere una propria pagina personale, con la differeza che per brand, artisti, organizzazioni, 
            marchi senza un indirizzo fisico, si possono creare "playout" con il solo scopo di raggiungere follower, fan e clienti;
            Mentre, per le attività commerciali locali dotate di indirizzo e numero di telefono, <b>Nerdbook</b> permette di creare una pagina apposita per gli utenti nelle vicinanze.
            L'interfaccia di <b>Nerdbook</b> è di semplice utilizzo e permette anche ai meno esperti di avere 
            un controllo totale del proprio profilo e quindi anche delle persone che possono accedervi e/o mettersi in contatto con l'utente.
        </p>
        </div>
            
        
        <jsp:include page="footer.jsp"/>
        
        </div>
    </body>
</html>

