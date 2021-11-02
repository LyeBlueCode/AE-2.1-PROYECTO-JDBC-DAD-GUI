package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseConnection {

    private final String URL;
    private final String PORT;
    private final String DBNAME;
    private final String USER;
    private final String PASSWORD;
    private final String MYSQLCLASS = "com.mysql.cj.jdbc.Driver";
    private Connection conn;

    public DatabaseConnection(String URL, String PORT, String DB_NAME, 
                              String USER, String PASSWORD) {
        this.URL = URL;
        this.PORT = PORT;
        this.DBNAME = DB_NAME;
        this.USER = USER;
        this.PASSWORD = PASSWORD;
    }

    public Connection connect() {

        try {

            Class.forName(MYSQLCLASS).newInstance();
            String ConnectionUrl =
            "jdbc:mysql://" + URL + ":" + PORT + "/" + DBNAME;
            conn = DriverManager.getConnection(ConnectionUrl, USER, PASSWORD);
            
        } catch (InstantiationException | IllegalAccessException | 
                 ClassNotFoundException | SQLException ex) {
            
            ex.printStackTrace();
        }
        return conn;

    }
    public void disconnect() {
        try {
            if (conn != null && !conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public boolean isConnected() {
        try {
            return !conn.isClosed();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
   
    
    public String getURL() {
        return URL;
    }

    public String getPORT() {
        return PORT;
    }

    public String getDBNAME() {
        return DBNAME;
    }

    public String getUSER() {
        return USER;
    }

    public String getPASSWORD() {
        return PASSWORD;
    }

    public String getMYSQLCLASS() {
        return MYSQLCLASS;
    }

   
    
}
