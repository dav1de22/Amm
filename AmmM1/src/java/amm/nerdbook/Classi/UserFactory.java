/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;
import java.util.ArrayList;

/**
 *
 * @author Davide
 */
public class UserFactory {
    
    //Pattern Design Singleton
    private static UserFactory singleton;

    public static UserFactory getInstance() {
        if (singleton == null) {
            singleton = new UserFactory();
        }
        return singleton;
    }
    
    private ArrayList<User> listaUser = new ArrayList<>();
    
    private UserFactory(){
        
    // Istanze utenti
    
    //Marco Fenice
    
    User user1= new User();
    user1.setId(0);
    user1.setNome("Marco");
    user1.setCognome("Fenice");
    user1.setImgprofilo("img/MarcoFenice.jpg");
    user1.setMotto("Odio zanzare, mosche e pulci!");
    user1.setUsername("Marcus1");
    user1.setPsw("abc");
    user1.setDob("18/02/2016");
    
    //Massimo Dolore
    
    User user2= new User();
    user2.setId(1);
    user2.setNome("Massimo");
    user2.setCognome("Dolore");
    user2.setImgprofilo("img/MassimoDolore.jpg");
    user2.setMotto("Lo slow motion è uno stile di vita");
    user2.setUsername("Max1");
    user2.setPsw("abc");
    user2.setDob("09/02/1994");
    
    //Massimo Dolore
    
    User user3= new User();
    user3.setId(2);
    user3.setNome("Nathan");
    user3.setCognome("Drago");
    user3.setImgprofilo("img/NathanDrago.jpg");
    user3.setMotto("Sono follemente innamorato di Lara Croft");
    user3.setUsername("Nathan1");
    user3.setPsw("abc");
    user3.setDob("09/02/1994");
    
    listaUser.add(user1);
    listaUser.add(user2);
    listaUser.add(user3);
    
        
    }
    
    public User getUserById(int id) {
        for (User user : this.listaUser) {
            if (user.getId() == id) {
                return user;
            }
        }
        return null;
    }
    
    public int getIdByUserAndPassword(String username, String password){
        for(User user : this.listaUser){
            if(user.getUsername().equals(username) && user.getPsw().equals(password)){
                return user.getId();
            }
        }
        return -1;
    }
}
