<%@page import="java.util.Map"%>
<%@page import="br.sisacademico.model.Curso"%>
<%@page import="br.sisacademico.dao.CursoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    CursoDAO cDAO = new CursoDAO();
    Map<Curso, Integer> cursos = cDAO.getTodosCursosCountAlunos();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SisAcadêmico</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"></jsp:include>
        
        <script>
            $(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
        
        <div class="container mt-4">
            <table class="table justify-content-center">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Curso</th>
                        <th scope="col">Tipo de Curso</th>
                        <th scope="col">Qtd. Alunos</th>
                        <th scope="col">Ver Alunos</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Excluir</th>
                    </tr>
                </thead>
                <tbody>
                    <% for(Map.Entry<Curso, Integer> c : cursos.entrySet()) { %>
                    <tr>
                        <td><%=c.getKey().getNomeCurso()%></td>
                        <td><%=c.getKey().getTipoCurso()%></td>
                        <td><%=c.getValue()%></td>
                        <% if(c.getValue() == 0) { %>
                            <td>
                                <span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="Sem alunos para exibir">
                                    <button class="btn btn-secondary" disabled style="pointer-events: none;" type="button">Ver alunos</button>
                                </span>
                            </td>
                        <% } else { %>
                            <td><a href="./alunos.jsp?idCurso=<%=c.getKey().getIdCurso()%>" class="btn btn-success">Ver alunos</a></td>
                        <% } %>
                        <td>Bt. Editar</td>
                        <td>Bt. Excluir</td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </body>
</html>
