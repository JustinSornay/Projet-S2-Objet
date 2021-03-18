/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metier;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author julien
 */
public class Utils {
     /*
    * hashage mdp
    *
    */
    private String HashPassword (String p){
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
}
