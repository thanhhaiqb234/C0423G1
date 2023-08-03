package com.example.quan_ly_1.repository;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseRepository {
    private static String jdbcUrl = "jdbc:mysql://localhost:3306/demo";
    private static String username = "root";
    private static String password = "codegym";
    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl,username,password);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    private   BaseRepository(){

    }
    public static Connection getConnectionJavaToDB(){
        return connection;
    }
}
