/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projet;

/**
 * Classe java qui représente une competence. 
 * @author Olivier
 */
public class Skill 
{
    private String Name;  //nom de la compétence
    private String Level; //Niveau de la compétence
    
    //renvoie le nom de la competence
    public String GetName() 
    {
        return this.Name;
    }
    
    //change le nom de la competence
    public void SetName(String name)
    {
        this.Name=name;
    }
    
    //change le level de la competence
    public void SetLevel(String level)
    {
        this.Level=level;
    }
    
    //renvoie le level de la competence
    public String GetLevel()
    {
        return this.Level;
    }
}
