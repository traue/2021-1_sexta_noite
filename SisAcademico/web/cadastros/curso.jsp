<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SisAcadênico</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"></jsp:include>
        <div class="container mt-4">
            <div style="width: 30%; margin: 0 auto !important;">
                <form method="post" action="../CursoController">
                    <div class="form-group">
                        <label>Nome do curso</label>
                        <input type="text" name="nomeCurso" 
                               class="form-control" 
                               required
                               placeholder="Insira o nome do curso">
                    </div>
                    <div class="form-group mt-3">
                        <label>Tipo de curso</label>
                        <input type="text" name="tipoCurso" 
                               class="form-control" 
                               required
                               placeholder="Insira o tipo do curso">
                    </div>
                    <input type="hidden" value="cadastro" name="tipoAcao">
                    <input type="submit" value="Cadastrar" class="btn btn-primary mt-3 w-100">
                </form>
            </div>
        </div>
    </body>
</html>
