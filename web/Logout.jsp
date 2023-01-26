
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Logout</title>
    </head>
    <body>
        <%
            HttpSession httpsession = request.getSession();
            httpsession.invalidate();
            response.sendRedirect("index.html");
        %>
    </body>
</html>