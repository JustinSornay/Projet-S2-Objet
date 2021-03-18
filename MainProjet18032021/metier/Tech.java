/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metier;


import metier.Skill;
import java.util.ArrayList; // import the ArrayList class
/**
 *
 * @author Olivier
 * le technicien est un utilisateur
 */
public class Tech extends User 
{ 
	 /* un technicien va lister un certain nombre de compétences*/
	 
	 
    public ArrayList<Skill> skills = new ArrayList<>();
    
	 /* Demande la liste des compétences d'un techniciens, avec leur niveau
	 * @return un ensemble de compétences*/
    
    public ArrayList<Skill> GetSkills()
        {
		return this.skills;  //Return la list des skills
	}
}
