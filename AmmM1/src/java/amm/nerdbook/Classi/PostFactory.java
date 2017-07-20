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
public class PostFactory {
    //Pattern Design Singleton
    private static PostFactory singleton;

    public static PostFactory getInstance() {
        if (singleton == null) {
            singleton = new PostFactory();
        }
        return singleton;
    }
    
    //Gestione DB
    private String connectionString;
    
    public void setConnectionString(String s){
	this.connectionString = s;
    }
    
    public String getConnectionString(){
            return this.connectionString;
    }
    //Fine gestione DB
    
    private ArrayList<Post> listaPost = new ArrayList<Post>();
    
    private PostFactory(){
    
    UserFactory userFactory = UserFactory.getInstance(); 
    GroupFactory groupFactory = GroupFactory.getInstance();
            
    }
    
        public Post getPostById(int id) {
        for (Post post : this.listaPost) {
            if (post.getId() == id) {
                return post;
            }
        }
        return null;
    }

    public List getPostList(User usr) {

        List<Post> listaPost = new ArrayList<Post>();

        for (Post post : this.listaPost) {
            if (post.getUser().equals(usr)) {
                listaPost.add(post);
            }
        }
        return listaPost;
    }
        
    }

