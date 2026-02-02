<%-- 
    Document   : morse
    Created on : 02.02.2026, 10:37:37
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Morse code lernen</title>
        <link rel="stylesheet" href="styles.css">
    <link rel="icon" type="img/jpg" href="assets/logo.png">
    </head>
    <body>

        <%
            Random rand = new Random();
            int zahl = rand.nextInt(26);
            String[] buchstaben = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
            String[] morse = {".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."};
            session.setAttribute("buchstaben", buchstaben);
            session.setAttribute("morse", morse);
            session.setAttribute("zahl", zahl);
            
        %>

        <section>

            <br>
            <h1><%= buchstaben[zahl]%></h1>
            <form action="ergebnis.jsp" method="get">
                <input type="text" name="morse" autocomplete="off" required >
                <input type="submit" value="submit">
            </form>
            <br>

            <a href="index.jsp"><button id="idk">back</button></a>

            
        </section>
    </body>
</html>
