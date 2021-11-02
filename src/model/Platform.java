
package model;


public class Platform {
   
    private int idPlatform;
    private String platform;

    public Platform(int idPlataform, String plataform) {
        this.idPlatform = idPlataform;
        this.platform = plataform;
    }

    public Platform() {
    }

    public int getIdPlatform() {
        return idPlatform;
    }

    public void setIdPlatform(int idPlatform) {
        this.idPlatform = idPlatform;
    }

    public String getPlatform() {
        return platform;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }
    
    
    
}
