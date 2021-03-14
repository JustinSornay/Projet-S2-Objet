/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projet;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author julien
 */
public class PasswordHash {
    
    private String mdpHash;
    private Connection con=connecterDB();
    
    /*
    * Connect BDD
    */
    public static Connection connecterDB(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver oki");
            String url="jdbc:mysql://localhost:3306/mydb";
            String user="root";
            String password="";
            Connection cnx=DriverManager.getConnection(url,user,password);
            System.out.println("Connexion établie");
            return cnx;
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("marche pas");
            return null;
        }
    }
    
    public PasswordHash(char[] mdp){
        this.mdpHash = this.doHashing(this.TabCharToString(mdp));      
    }
    
    
    /*
    * hashage mdp
    * fonction directement appelé dans le constructeur
    */
    private String doHashing (String p){
        try{
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            
            messageDigest.update(p.getBytes());
            
            byte[] resultByteArray = messageDigest.digest();
            
            StringBuilder sb = new StringBuilder();
            
            for (byte b : resultByteArray){
                sb.append(String.format("%02x", b));
            }
            
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        
        return "";
    }
    
    /*
    * Converti le mdp reçu dans un char[] en String
    */
    private String TabCharToString(char[] mdp){
        return String.valueOf(mdp);
    }
    
    /*
    * Vérification si le MDP est bon
    */
    public boolean goodMDP(String user) throws SQLException{
        Statement st = con.createStatement();
        ResultSet res = st.executeQuery("SELECT PASSWORD FROM UTILISATEUR \n" + "WHERE UTILISATEUR.LOGIN = '"+user+"'"); 
        if(res.next()){
        if(res.getString(1).equals(this.mdpHash)){
            System.out.println("Bon mdp");
            return true;
        }else{
            System.out.println("Mauvais mdp : " + res.getString(1) + " " + this.mdpHash );
            return false;
        }
        }else{
            System.out.println("Mauvais Login");
            return false;
        }
    }
    
    
   /*
    * Pour tester si le hashage fonctionne
    * A suppr pour la fin
    */
    @Override
    public String toString(){
        return this.mdpHash;
    }
}
