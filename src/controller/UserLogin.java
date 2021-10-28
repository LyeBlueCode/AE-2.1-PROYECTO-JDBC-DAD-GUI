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

    boolean isLoged(List<String[]> usuarios) {
        return usuarios.stream().filter(usuario -> (usuario[0] == null
                ? this.user == null
                : usuario[0].equals(this.user))).anyMatch(usuario
                -> (usuario[1] == null
                        ? this.pass == null
                        : usuario[1].equals(this.pass)));
    }

    //Este método va en DatabaseManager
    List<String[]> getUsers() {
        List<String[]> usersList = null;
        try
        {
            usersList = new ArrayList<>();
            String[] users = new String[3];
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery("select * from user");

            while (rs.next())
            { //Ejemplo, puesto que aún no se ha creado la tabla user/usuario
                users[0] = rs.getString("User");
                users[1] = rs.getString("Password");
                users[2] = rs.getString("Rol");
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
