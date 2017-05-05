/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Davide
 */
public class GroupFactory {
    //Pattern Design Singleton
    private static GroupFactory singleton;

    public static GroupFactory getInstance() {
        if (singleton == null) {
            singleton = new GroupFactory();
        }
        return singleton;
    }
    
     private ArrayList<Group> listaGroup = new ArrayList<Group>();
     
     private GroupFactory(){
         
      UserFactory userFactory = UserFactory.getInstance();  
         
      Group group1 = new Group(); 
      group1.setId(0);
      group1.setAdmin(userFactory.getUserById(0));   
      group1.setTitle("BOXARI");
      group1.setInfo("Il primo gruppo per appassionati della console Di casa Microsoft su NerdBook!");
     }
    public Group getGroupById(int id) {
        for (Group group : this.listaGroup) {
            if (group.getId() == id) {
                return group;
            }
        }
        return null;
    }
    
}
