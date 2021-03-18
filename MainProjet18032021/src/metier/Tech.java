/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metier;

import java.util.Vector;
import metier.Skill;

/**
 *
 * @author Olivier
 * le technicien est un utilisateur
 */
public class Tech extends User 
{ 
	 /* un technicien va lister un certain nombre de compétences*/
	 
	 
    public Vector<Skill> _skills = new Vector<Skill>();
    
	 /* Demande la liste des compétences d'un techniciens, avec leur niveau
	 * @return un ensemble de compétences*/
    
    public Skill[] GetSkills() 
        {
		return null;
	}
}
