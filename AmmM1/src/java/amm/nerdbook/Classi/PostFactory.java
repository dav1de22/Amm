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
    
    private ArrayList<Post> listaPost = new ArrayList<Post>();
    
    private PostFactory(){
    
    UserFactory userFactory = UserFactory.getInstance(); 
    GroupFactory groupFactory = GroupFactory.getInstance();
    
    
    //Creazione post
        Post post1 = new Post();
        post1.setStatus("Odio gli insetti! Mi fanno proprio schifo!");
        post1.setId(0);
        post1.setUser(userFactory.getUserById(0));
        post1.setGroup(groupFactory.getGroupById(0));
        
        Post post2 = new Post();
        post2.setStatus("Amo questo film e lo slow motion!");
        post2.setContent("img/Neo.jpg");
        post2.setPostType(Post.Type.IMAGE);
        post2.setId(1);
        post2.setUser(userFactory.getUserById(1));
        
        Post post3 = new Post();
        post3.setStatus("Consiglio a tutti di leggere questo articolo! Che storia incredibile!");
        post3.setContent("http://www.lercio.it/terrapiattista-precipita-dal-bordo-del-pianeta-ma-si-salva-afferrando-una-scia-chimica/");
        post3.setId(2);
        post3.setUser(userFactory.getUserById(2));
        post3.setPostType(Post.Type.URL);
        
        listaPost.add(post1);
        listaPost.add(post2);
        listaPost.add(post3);
        
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

