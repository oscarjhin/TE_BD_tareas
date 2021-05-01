package com.emergentes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {

    static String url = "jdbc:mysql://localhost:3306/bd_proyectos";
    static String usuario = "root";
    static String password = "jhin6730026";

    protected Connection conn = null;

    public ConexionDB() throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, usuario, password);
            if (conn != null) {
                System.out.println("Conexion Ok" + conn);
            }

        } catch (ClassNotFoundException ex) {
            System.out.println("Falta en driver " + ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("Error al conectar " + ex.getMessage());
        }
    }

    public Connection conectar() {
        return conn;
    }

    public void desconectar() {
        System.out.println("Cerrando la BD: " + conn);
        try {
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Error de SQL " + ex.getMessage());
        }

    }

}
