package br.sisacademico.dao;

import br.sisacademico.model.Aluno;
import br.sisacademico.model.Curso;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class AlunoDAO {

    private static Statement stm = null;

    public ArrayList<Aluno> getTodosAlunos(Integer... idCurso) throws SQLException {

        ArrayList<Aluno> alunos = new ArrayList<>();
        String query = "SELECT\n"
                + "    \"tb_aluno\".\"idAluno\","
                + "    \"tb_aluno\".\"ra\","
                + "    \"tb_aluno\".\"nome\","
                + "    \"tb_curso\".\"idCurso\","
                + "    \"tb_curso\".\"nome_curso\","
                + "    \"tb_curso\".\"tipo_curso\" "
                + "FROM \"tb_aluno\" "
                + "INNER JOIN \"tb_curso\" ON \"tb_aluno\".\"idCurso\" = \"tb_curso\".\"idCurso\"";

        if (idCurso.length != 0) {
            query += "WHERE \"tb_curso\".\"idCurso\" = " + idCurso[0];
        }

        query += " ORDER BY \"nome\"";

        stm = ConnectionFactory.getConnection().createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        ResultSet resultados = stm.executeQuery(query);

        while (resultados.next()) {
            Aluno a = new Aluno();
            Curso c = new Curso();

            a.setIdAluno(resultados.getInt("idAluno"));
            a.setNomeAluno(resultados.getString("nome"));
            a.setRa(resultados.getInt("ra"));

            c.setIdCurso(resultados.getInt("idCurso"));
            c.setNomeCurso(resultados.getString("nome_curso"));
            c.setTipoCurso(resultados.getString("tipo_curso"));
            
            a.setCurso(c);
            
            alunos.add(a);
        }

        stm.getConnection().close();
        
        return alunos;
    }

}
