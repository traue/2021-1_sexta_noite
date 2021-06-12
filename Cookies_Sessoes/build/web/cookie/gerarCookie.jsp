<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookies</title>
    </head>
    <body>
        <%
            String nome = "";
            String codificada = "";
            
            if(request.getParameter("nome") != null) {
                nome = request.getParameter("nome");
            }
            
            codificada = URLEncoder.encode(nome, "UTF-8");
            
            Cookie cookie = new Cookie("NomeDoUsuario", codificada);
            
            cookie.setMaxAge(120); //em segundos
            cookie.setVersion(0);
            
            response.addCookie(cookie);
        %>
        <h1>Trabalhando com cookies</h1>
        <hr>
        <h3>Cookie gerada com sucesso!</h3>
        <br>
        <strong>Valor da cookie: </strong> <%=nome%>
        <br><br>
        <a href="verCookie.jsp">Obter os dados da cookie gerada...</a><br>
        <a href="./">Voltar para geração da cookie</a><br>
        <a href="../">Voltar para a aplicação</a>
    </body>
</html>
