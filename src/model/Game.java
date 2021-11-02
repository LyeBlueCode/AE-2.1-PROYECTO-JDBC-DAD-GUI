
package model;

import java.sql.Date;


public class Game {
    
   private int IdGame; 
   private String game; 
   private String description; 
   private Date publicationDate; 
   private Type type;  

    public Game(int IdGame, String game, String description, Date fechaPublicacion, Type type) {
        this.IdGame = IdGame;
        this.game = game;
        this.description = description;
        this.publicationDate = fechaPublicacion;
        this.type = type;
    }

    public Game() {
    }

    public int getIdGame() {
        return IdGame;
    }

    public void setIdGame(int IdGame) {
        this.IdGame = IdGame;
    }

    public String getGame() {
        return game;
    }

    public void setGame(String game) {
        this.game = game;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(Date publicationDate) {
        this.publicationDate = publicationDate;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    
   
}
