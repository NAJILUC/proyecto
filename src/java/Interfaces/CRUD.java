/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.Producto;
import java.util.List;

/**
 *
 * @author HP
 */
public interface CRUD {
    
    public List listar();
    public Producto list(int id);
    public boolean add(Producto pr);
    public boolean edit(Producto pr);
    public boolean delete(int id);
}
