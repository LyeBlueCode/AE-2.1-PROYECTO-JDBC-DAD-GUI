package controller;

import model.Type;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TypeManager {
    
    private final String SELECT_TYPE = "select idTipo, Tipo from tipo";
    private final String SEARCH_TYPE = "select * from tipo where Tipo = ?";
    

    DatabaseConnection dC;
    
    public List<Type> typesList() {
        
        List<Type> listType = new ArrayList<>();
        
        try (Connection connect = dC.connect();
             PreparedStatement pS = connect.prepareStatement(SELECT_TYPE);
             ResultSet rS = pS.executeQuery();) {
            
            
            while(rS.next()) {
               Type type = new Type();
               type.setIdType(rS.getInt("iDtipo"));
               type.setType(rS.getString("Tipo"));
                 
               listType.add(type);
            }
              
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         return listType;
    }

    /*https://www.arquitecturajava.com/jdbc-prepared-statement-y-su-manejo/*/
    public Type searchType(String type) {

        Type typefound = null;
        

        try (Connection connection = dC.connect();
                
                PreparedStatement pS = connection.prepareStatement(SEARCH_TYPE);) {
            pS.setString(1, type);
                                
            try (ResultSet rS = pS.executeQuery();) {
                if(rS.next()) {
                    typefound = new Type(
                            rS.getInt("idTipo"),
                            rS.getString("Tipo")
                    );
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return null;

    }

}
