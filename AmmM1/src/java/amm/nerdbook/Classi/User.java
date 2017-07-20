/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;

/**
 *
 * @author Davide
 */
public class User {
    
    private int id;
    private String nome;
    private String cognome;
    private String imgprofilo;
    private String dob;
    private String motto;
    private String password;
    private String username;
    

    public User() {
        id = 0;
        nome = "";
        cognome = "";
        imgprofilo="";
        motto = "";
        password = "";
        dob="";
        username="";}
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the cognome
     */
    public String getCognome() {
        return cognome;
    }

    /**
     * @param cognome the cognome to set
     */
    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    /**
     * @return the imgprofilo
     */
    public String getImgprofilo() {
        return imgprofilo;
    }

    /**
     * @param imgprofilo the imgprofilo to set
     */
    public void setImgprofilo(String imgprofilo) {
        this.imgprofilo = imgprofilo;
    }

    /**
     * @return the dob
     */
    public String getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(String dob) {
        this.dob = dob;
    }

    /**
     * @return the motto
     */
    public String getMotto() {
        return motto;
    }

    /**
     * @param motto the motto to set
     */
    public void setMotto(String motto) {
        this.motto = motto;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }
    


    
    }


