/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
    
    //Gestione DB
    private String connectionString;
    
    public void setConnectionString(String s){
	this.connectionString = s;
    }
    
    public String getConnectionString(){
            return this.connectionString;
    }
    //Fine gestione DB
    
    //private ArrayList<User> listaUser = new ArrayList<>();
    
    private UserFactory(){
    }
    
    public User getUserById(int id) {
        try {
            // path, username, password
            Connection conn = DriverManager.getConnection(connectionString, "nerd", "nerd");
            
            String query = 
                      "select * from utenti "
                    + "where utente_id = ?";
            
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            
            // Si associano i valori
            stmt.setInt(1, id);
            
            // Esecuzione query
            ResultSet res = stmt.executeQuery();

            // ciclo sulle righe restituite
            if (res.next()) {
                User current = new User();
                current.setId(res.getInt("utente_id"));
                current.setNome(res.getString("name"));
                current.setCognome(res.getString("cognome"));
                current.setImgprofilo(res.getString("imgProfilo"));
                current.setMotto(res.getString("motto"));
                current.setDob(res.getString("dob"));
                current.setUsername(res.getString("username"));
                current.setPassword(res.getString("password"));
                
                stmt.close();
                conn.close();
                return current;
            }

            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    //Fine gestione DB
        
        
        
        return null;
    }
    
    public int getIdByUserAndPassword(String username, String password){
        try {
            // path, username, password
            Connection conn = DriverManager.getConnection(connectionString, "nerd", "nerd");
            
            String query = 
                      "select utente_id from utenti "
                    + "where username = ? and password = ?";
            
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            
            // Si associano i valori
            stmt.setString(1, username);
            stmt.setString(2, password);
            
            // Esecuzione query
            ResultSet res = stmt.executeQuery();

            // ciclo sulle righe restituite
            if (res.next()) {
                int id = res.getInt("utente_id");

                stmt.close();
                conn.close();
                return id;
            }

            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
        
        
    }
}
