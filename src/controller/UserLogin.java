package controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gabri
 */
public class UserLogin {

    private final Connection connection;
    private final String user, pass;

    public UserLogin(Connection connection, String user, String pass) {
        this.connection = connection;
        this.user = user;
        this.pass = pass;

    }

    /**
     * 
     * Este método devuelve verdadero o falso si el usuario está logeado.
     * Verifica que el usuario introducido coincida con algún usuario de la 
     * base de datos, y si es así verifica sus contraseñas.
     * 
     * @param usuarios
     * @return
     */
    public boolean isLoged(List<String[]> usuarios) {
        for (String[] users : usuarios)
        {
            if (users[0].equals(user)) 
            {
                if (users[1].equals(pass))
                {
                    return true;
                }
            }
        }
        return false;
    }

    //Este método va en DatabaseManager
    public List<String[]> getUsers() {
        List<String[]> usersList = null;
        try
        {
            usersList = new ArrayList<>();
            String[] users = new String[3];
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery("select * from user");

            while (rs.next())
            {
                users[0] = rs.getString("UsuarioId");
                users[1] = rs.getString("Contrasenia");
                users[2] = Integer.toString(rs.getInt("NivelAcceso"));
                usersList.add(users);
            }
        } catch (SQLException ex)
        {
            ex.printStackTrace();
        }
        return usersList;
    }

    //---------------------------------------
}
