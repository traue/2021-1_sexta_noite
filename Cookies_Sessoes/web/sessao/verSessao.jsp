<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sessão</title>
    </head>
    <body>
        <h1>Trabalhando com Sessões</h1>
        <hr>
        <p>
            <strong>
                Dado armazenado na sessão:
            </strong>
            <%= session.getAttribute("nomeUsuario")%>
        </p>
        <br>
        <a href="./">Gerar novo valor para a sessão</a>
        <br>
        <a href="../">Voltar para a aplicação</a>
    </body>
</html>