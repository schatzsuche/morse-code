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
    </head>
    <body>

        <%
            Random rand = new Random();
            int zahl = rand.nextInt(26);
            String[] buchstaben = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"};
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
