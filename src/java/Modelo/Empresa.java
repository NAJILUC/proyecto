/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author HP
 */
public class Empresa {
    
    int id;
    String nombre;
    String quienessomos;
    String email;
    String direccion;
    String telefono;
    String facebook;
    String twitter;
    String instagram;

    public Empresa(int id, String nombre, String quienessomos, String email, String direccion, String telefono, String facebook, String twitter, String instagram) {
        this.id = id;
        this.nombre = nombre;
        this.quienessomos = quienessomos;
        this.email = email;
        this.direccion = direccion;
        this.telefono = telefono;
        this.facebook = facebook;
        this.twitter = twitter;
        this.instagram = instagram;
    }

    public Empresa() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getQuienessomos() {
        return quienessomos;
    }

    public void setQuienessomos(String quienessomos) {
        this.quienessomos = quienessomos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }
    
    
    
}
