
package model;

import java.time.LocalDate;


public class Users {
    
    private String userId;
    private String password;
    private String email;
    private LocalDate registrationDate;
    private int accessLevel;

    public Users(String userId, String password, String email, LocalDate registrationDate, int accessLevel) {
        this.userId = userId;
        this.password = password;
        this.email = email;
        this.registrationDate = registrationDate;
        this.accessLevel = accessLevel;
    }

    public Users() {
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(LocalDate registrationDate) {
        this.registrationDate = registrationDate;
    }

    public int getAccessLevel() {
        return accessLevel;
    }

    public void setAccessLevel(int accessLevel) {
        this.accessLevel = accessLevel;
    }
    
    
}
