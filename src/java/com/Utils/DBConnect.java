package com.Utils;

import java.sql.Connection;
import java.sql.DriverManager;

// This class can be used to initialize the database connection 
public class DBConnect {

    private static Connection con;

    public static Connection getConnection() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/boatsystem";
            con = DriverManager.getConnection(url, "root", "");
        } catch (Exception e) {
            e.getMessage();
        }
        return con;
    }

    public void closeConnection() {

        try {
            con.close();
        } catch (Exception e) {
            e.getMessage();
        }
    }
}
