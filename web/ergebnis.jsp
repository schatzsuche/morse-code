<%-- 
    Document   : ergebnis
    Created on : 02.02.2026, 10:58:06
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Morse code lernen</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <%
            String[] buchstaben = (String[]) session.getAttribute("buchstaben");
            String[] morse = (String[]) session.getAttribute("morse");
            int zahl = (int) session.getAttribute("zahl");

            String morseInput = request.getParameter("morse");
            String test = morse[zahl];
            String Ergebnis = "";
            if (morseInput.equals(test)) {
                Ergebnis = "Richtig";
            } else {
                Ergebnis = "Falsch";
            }
        %>
        <section>

            <h1><span style="color: #8A244B;"><%= morseInput%></span> ist <%= Ergebnis%></h1>
            <br>
            <h1> Es wahr <span style="color: #8A244B;"><%= test%></span></h1>
            <a href="morse.jsp"><button id="idk" >back</button></a>
        </section>


    </body>
</html>
