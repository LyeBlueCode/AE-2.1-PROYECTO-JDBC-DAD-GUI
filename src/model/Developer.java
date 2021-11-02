
package model;

public class Developer {
    
    private int idDeveloper;
    private String developer;
    private String country;

    public Developer(int idDeveloper, String developer, String countries) {
        this.idDeveloper = idDeveloper;
        this.developer = developer;
        this.country = countries;
    }

    public Developer() {
    }

    public int getIdDeveloper() {
        return idDeveloper;
    }

    public void setIdDeveloper(int idDeveloper) {
        this.idDeveloper = idDeveloper;
    }

    public String getDeveloper() {
        return developer;
    }

    public void setDeveloper(String developer) {
        this.developer = developer;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    
    
    
    
}
