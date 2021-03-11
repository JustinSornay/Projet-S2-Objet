/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projet;

/**
 *
 * @author POULET
 */
public class User {
    
    private int ID;
    private String Login;
    private String PasswordHash;
    private String LastName;
    private String FirstName;
    private boolean IsConnecter;
    private boolean IsChief;
    
    public void User(){
        
    }
    
    public void Copy(User another){
        this.ID = another.ID;
        this.Login = another.Login;
        this.PasswordHash = another.PasswordHash;
        this.LastName = another.LastName;
        this.FirstName = another.FirstName;
        this.IsConnecter = another.IsConnecter;
        this.IsChief = another.IsChief;
    }
    
    public void Disconnect(){
        
    }
    
}
