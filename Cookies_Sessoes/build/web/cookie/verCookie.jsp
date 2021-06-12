<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookies</title>
    </head>
    <body>
        <%
            String nomeCookie = "NomeDoUsuario";
            Cookie cookies[] = request.getCookies();
            Cookie cookieEncontrada = null;
            
            if(cookies != null) {
                for(int i = 0; i < cookies.length; i++) {
                    if(cookies[i].getName().equals(nomeCookie)) {
                        cookieEncontrada = cookies[i];
                        break;
                    }
                }
            }
        %>
        <h1>Trabalhando com cookies</h1>
        <hr>
        <br>
        <%
            if(cookieEncontrada == null) {
                out.print("Não encontrei essa Cookies :(");
            } else {
                String valor = URLDecoder.decode(cookieEncontrada.getValue(), "UTF-8");
                out.print("<h3>Cookie encontrada!</h3>");
                out.print("<strong>Valor: </strong>" + valor);
            }
        %>
        <br>    
        <a href="./">Gerar novamente</a><br>
        <a href="../">Voltar para a página inicial</a>
    </body>
</html>
