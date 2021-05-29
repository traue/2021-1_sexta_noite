package br.sisacademico.dao;

import br.sisacademico.model.Curso;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

public class CursoDAO {

    private static Statement stm = null;
    
    public Map<Curso, Integer> getTodosCursosCountAlunos() throws SQLException {
        Map<Curso, Integer> relatorio = new HashMap<Curso, Integer>();

        String query = "SELECT "
                + "    curso.\"idCurso\","
                + "    curso.\"nome_curso\","
                + "    curso.\"tipo_curso\","
                + "    (SELECT count(*)"
                + "       FROM \"tb_aluno\" "
                + "      WHERE curso.\"idCurso\" = \"idCurso\") as \"qtdAlunos\" "
                + "FROM \"tb_curso\" as curso";
        
        stm = ConnectionFactory.getConnection().createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        
        ResultSet resultados = stm.executeQuery(query);
        
        while(resultados.next()) {
            Curso c = new Curso();
            int qtdAlunos = 0;
            
            c.setIdCurso(resultados.getInt("idCurso"));
            c.setNomeCurso(resultados.getString("nome_curso"));
            c.setTipoCurso(resultados.getString("tipo_curso"));
            qtdAlunos = resultados.getInt("qtdAlunos");
            
            relatorio.put(c, qtdAlunos);
        }
        
        stm.getConnection().close();
        
        return relatorio;
    }
}
