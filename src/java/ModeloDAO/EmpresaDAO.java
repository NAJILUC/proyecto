/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Modelo.Empresa;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class EmpresaDAO {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Producto p=new Producto();
    
    public boolean add(Empresa e) {
       
        String sql="insert into empresa(nombre,quienessomos,emailcontacto,telefonocontacto) values ('"+e.getNombre()+"','"+e.getQuienessomos()+"','"+e.getEmail()+"','"+e.getTelefono()+"')";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        
        }catch(SQLException ex){
        
            System.out.println("ERROR AQUI--->"+ex);
            
        }
        return false;
    }
    
}
