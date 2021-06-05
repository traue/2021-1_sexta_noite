<%@page import="br.sisacademico.model.Aluno"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.sisacademico.dao.AlunoDAO"%>
<%@page import="java.util.Map"%>
<%@page import="br.sisacademico.model.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    AlunoDAO aDAO = new AlunoDAO();
    ArrayList<Aluno> alunos;
    boolean mostraPainelFiltro = false;
    
    if(request.getParameter("idCurso") != null) {
        int idCurso = Integer.parseInt(request.getParameter("idCurso"));
        alunos = aDAO.getTodosAlunos(idCurso);
        mostraPainelFiltro = true;
    } else {
        alunos = aDAO.getTodosAlunos();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SisAcadêmico</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"></jsp:include>
        <script src="../js/modalExclusao.js"></script>
        <% if(mostraPainelFiltro && alunos.size() > 0) { %>
        <div class="card mt-4" style="width: 90%; margin: 0 auto;">
            <div class="card-header bg-dark">
                <p class="text-white">Filtro aplicado</p>
            </div>
            <div class="card-body">
                <h6>Mostrando apenas alunos do curso: <strong><%= alunos.get(0).getCurso().getNomeCurso()%></strong></h6>
                <a href="alunos.jsp" class="btn btn-primary">Limpar filtro</a>
            </div>
        </div>
        <% } %>
        
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
