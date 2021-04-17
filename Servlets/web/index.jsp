<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Super Calculadora</title>
    </head>
    <body>
        <%
            String vA = request.getParameter("a") != null ? request.getParameter("a") : "";
            String vB = request.getParameter("b") != null ? request.getParameter("b") : "";
        %>
        <h1>Calculadora</h1>
        <hr>
        <form method="POST" action="CalcController">
            <div>
                <label>Valor A: </label>
                <input type="number" name="valorA" step="0.01" value="<%=vA%>">
            </div>
            <div style="margin: 20px 0;">
                <label>Valor B: </label>
                <input type="number" name="valorB" step="0.01" value="<%=vB%>">
            </div>
            <input type="submit" value="Somar" name="btCalcula">
            <input type="submit" value="Subtrair" name="btCalcula">
            <input type="submit" value="Multiplicar" name="btCalcula">
            <input type="submit" value="Dividir" name="btCalcula">
            <input type="submit" value="Elevar" name="btCalcula">
        </form>
            <% if(request.getParameter("result") != null) { %>
            <hr>
            <strong>Resultado = </strong><%= request.getParameter("result") %>
            <% } %>
    </body>
</html>
