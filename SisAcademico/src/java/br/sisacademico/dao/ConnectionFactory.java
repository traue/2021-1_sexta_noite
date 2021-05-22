package br.sisacademico.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    private static final String urlDB = "jdbc:derby://localhost:1527/SisAcademico";
    private static final String usuario = "uninove";
    private static final String senha = "Senha123";
    
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(urlDB, usuario, senha);
    }
}
