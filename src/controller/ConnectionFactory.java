
package controller;

import java.sql.Connection;


public class ConnectionFactory {

    public static Connection conn;
    
    public static void initConnection() {
        
        DatabaseConnection dc = new DatabaseConnection("localhost", "3306", 
                                                       "videojuegos", "root", 
                                                       "Programa10.");
                                      
        conn  = dc.connect();
    }
    
}
