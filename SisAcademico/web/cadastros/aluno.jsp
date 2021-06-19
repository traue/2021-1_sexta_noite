<%@page import="br.sisacademico.dao.CursoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.sisacademico.model.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    CursoDAO cDAO = new CursoDAO();
    ArrayList<Curso> cursos = cDAO.getCursos();
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
            <div style="width: 30%; margin: 0 auto !important;">
                <form method="post" action="../AlunoController">
                    <div class="form-group">
                        <label>RA</label>
                        <input type="number" name="raAluno" 
                               class="form-control" 
                               required
                               placeholder="Insira o RA do alunio">
                    </div>
                    <div class="form-group mt-3">
                        <label>Nome do aluno</label>
                        <input type="text" name="nomeAluno" 
                               class="form-control" 
                               required
                               placeholder="Insira o nome do alunoa">
                    </div>
                    <div class="form-group mt-3">
                        <label>Selecione o curso</label>
                        <select name="idCurso" class="form-control">
                            <% for(Curso c: cursos) { %>
                            <option value="<%=c.getIdCurso()%>"><%= c.getNomeCurso() + " (" + c.getTipoCurso() + ")"%></option>
                            <% } %>
                        </select>
                    </div>
                    <input type="hidden" value="cadastro" name="tipoAcao">
                    <input type="submit" value="Cadastrar" class="btn btn-primary mt-3 w-100">
                </form>
            </div>
        </div>
    </body>
</html>
