
package model;

public class GamePlatform {
     private int iD;
     private int idGame;
     private int idPlatform;
     private int idDeveloper;

    public GamePlatform(int iD, int idGame, int idPlatform, int idDeveloper) {
        this.iD = iD;
        this.idGame = idGame;
        this.idPlatform = idPlatform;
        this.idDeveloper = idDeveloper;
    }
     
    public GamePlatform() {
    }


    public int getiD() {
        return iD;
    }

    public void setiD(int iD) {
        this.iD = iD;
    }

    public int getIdGame() {
        return idGame;
    }

    public void setIdGame(int idGame) {
        this.idGame = idGame;
    }

    public int getIdPlatform() {
        return idPlatform;
    }

    public void setIdPlatform(int idPlatform) {
        this.idPlatform = idPlatform;
    }

    public int getIdDeveloper() {
        return idDeveloper;
    }

    public void setIdDeveloper(int idDeveloper) {
        this.idDeveloper = idDeveloper;
    }
}