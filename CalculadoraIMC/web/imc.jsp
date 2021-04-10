<%@page import="br.uninove.Imc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora IMC</title>
    </head>
    <body>
        <h1>Calculadora IMC</h1>
        <hr>
        
        <%
            float peso, altura;
            
            peso = Float.parseFloat(request.getParameter("peso"));
            altura = Float.parseFloat(request.getParameter("altura"));
            
            Imc imc = new Imc();
            
            imc.setAltura(altura);
            imc.setPeso(peso);
        %>
        <strong>Dados informados:</strong>
        <ul>
            <li><strong>Peso: </strong><%= peso %> Kg</li>
            <li><strong>Altura </strong><%= altura %> m</li>
        </ul>
        <strong>Calculo do IMC:</strong>
        <ul>
            <li><strong>IMC: </strong><%= String.format("%.2f", imc.calculaIMC()) %></li>
            <li><strong>Classificação: </strong><%= imc.getClassificacao() %></li>
        </ul>
    </body>
</html>
