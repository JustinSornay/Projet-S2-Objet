
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metier;

/**
 *
 * @author POULET And Olivier
 */
public class User {
    
    private int ID;
    private String Login;
    private String PasswordHash;
    private String LastName;
    private String FirstName;
    private boolean IsConnecter;
    private boolean IsChief;
    
    public void User(int id)
    {
      this.ID=id;
      this.IsConnecter=false;
      this.IsChief=false;
    }
    
    public void Copy(User another)
    {
        this.ID = another.ID;
        this.Login = another.Login;
        this.PasswordHash = another.PasswordHash;
        this.LastName = another.LastName;
        this.FirstName = another.FirstName;
        this.IsConnecter = another.IsConnecter;
        this.IsChief = another.IsChief;
    }
    
    //change le login du login de l'user
    public void SetLogin(String login)
    {
        this.Login=login;
    }
    
    //renvoie la valeur du login
    public String GetLogin()
    {
        return this.Login;
    }
    
    //change la valeur du passwordhash de l'user
    public void SetPasswordHash(String Passwordhash)
    {
        this.PasswordHash=Passwordhash;
    }
    
    //renvoie la valeur du Passwordhash de l'user
    public String GetPasswordhash()
    {
        return this.PasswordHash;
    }
    
    //change le last name de l'user
    public void SetLastName(String LastName)
    {
        this.LastName=LastName;
    }
    
    //renvoie la valeur du lastName
    public String GetLastName()
    {
        return this.LastName;
    }
    
    //change le last name de l'user
    public void SetFirstName(String FirstName)
    {
        this.FirstName=FirstName;
    }
    
    //renvoie la valeur du FirstName
    public String GetFirstName()
    {
        return this.FirstName;
    }
    
     //change l'état isconnected de l'user
    public void SetIsConnecter(boolean IsConnecter)
    {
        this.IsConnecter=IsConnecter;
    }
    
    //renvoie la valeur de getisconnecter
    public boolean GetIsConnecter()
    {
        return this.IsConnecter;
    }
    
    //change l'état de IsChief de l'user
    public void SetIsChief(boolean IsChief)
    {
        this.IsChief=IsChief;
    }
    
    //renvoie la valeur de IsChief
    public boolean GetIsChief()
    {
        return this.IsChief;
    }
    
    public void Disconnect()
    {
        this.IsChief=false;
    }
    
}