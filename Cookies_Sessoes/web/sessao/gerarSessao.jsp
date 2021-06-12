<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sessões</title>
    </head>
    <body>
        <%
           String nome = "";
           if(request.getParameter("nome") != null) {
               nome = request.getParameter("nome");
           }
           
            session.setAttribute("nomeUsuario", nome);
        %>
        <h1>Trabalhando com Sessões</h1>
        <hr>
        <h3>Valor incluído na sessão!</h3>
        <a href="verSessao.jsp">Recuperar dados da sessão</a>
        <br>
        <a href="./">Gerar novo valor para a sessão</a>
        <br>
        <a href="../">Voltar para a aplicação</a>
    </body>
</html>
