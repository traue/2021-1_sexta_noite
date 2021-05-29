<%@page import="br.sisacademico.model.Aluno"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.sisacademico.dao.AlunoDAO"%>
<%@page import="java.util.Map"%>
<%@page import="br.sisacademico.model.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    AlunoDAO aDAO = new AlunoDAO();
    ArrayList<Aluno> alunos = aDAO.getTodosAlunos();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SisAcadêmico</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"></jsp:include>
        <div class="container mt-4">
            <table class="table justify-content-center">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">RA</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Curso</th>
                        <th scope="col">Tipo de Curso</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Excluir</th>
                    </tr>
                </thead>
                <tbody>
                    <% for(Aluno a : alunos) { %>
                    <tr>
                        <td><%=a.getRa()%></td>
                        <td><%=a.getNomeAluno()%></td>
                        <td><%=a.getCurso().getNomeCurso()%></td>
                        <td><%=a.getCurso().getTipoCurso()%></td>
                        <td>Bt. Editar</td>
                        <td>Bt. Excluir</td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </body>
</html>
