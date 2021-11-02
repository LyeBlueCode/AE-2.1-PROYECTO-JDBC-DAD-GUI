
package model;


public class Roles {
    
     private int Id;
     private String rol;

    public Roles(int Id, String rol) {
        this.Id = Id;
        this.rol = rol;
    }

    public Roles() {
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
     
     
}
