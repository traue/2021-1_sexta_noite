package br.sisacademico.dao;

import br.sisacademico.model.Curso;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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

        while (resultados.next()) {
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

    public ArrayList<Curso> getCursos(Integer... idCurso) throws SQLException {
        ArrayList<Curso> cursos = new ArrayList<>();

        String query = "SELECT \"idCurso\", \"nome_curso\", \"tipo_curso\" FROM \"tb_curso\"";

        if (idCurso.length != 0) {
            query += " WHERE \"idCurso\" =  " + idCurso[0];
        }
        query += " ORDER BY \"nome_curso\"";
        
        stm = ConnectionFactory.getConnection().createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        ResultSet resultados = stm.executeQuery(query);

        while (resultados.next()) {
            Curso c = new Curso();

            c.setIdCurso(resultados.getInt("idCurso"));
            c.setNomeCurso(resultados.getString("nome_curso"));
            c.setTipoCurso(resultados.getString("tipo_curso"));

            cursos.add(c);
        }

        stm.getConnection().close();

        return cursos;
    }

    public boolean deletarCurso(int idCurso) {
        try {
            String query = "DELETE FROM \"tb_curso\" WHERE \"idCurso\" = ?";
            PreparedStatement stm = ConnectionFactory.getConnection().prepareStatement(query);
            stm.setInt(1, idCurso);
            stm.execute();
            stm.getConnection().close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean insereCurso(Curso c) {
        try {
            String query = "INSERT INTO \"tb_curso\" (\"nome_curso\", \"tipo_curso\") VALUES(?,?)";
            PreparedStatement stm = ConnectionFactory.getConnection().prepareStatement(query);
            stm.setString(1, c.getNomeCurso());
            stm.setString(2, c.getTipoCurso());
            stm.execute();
            stm.getConnection().close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
}
