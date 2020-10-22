/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP
 */
public class ProductoDAO implements CRUD{

    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Producto p=new Producto();
    
    @Override
    public List listar() {
        ArrayList<Producto>list=new ArrayList<>();
        String sql="select * from producto";
        try{
        
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Producto per=new Producto();
                per.setId(rs.getInt("id"));
                per.setReferencia(rs.getString("referencia"));
                per.setNombre(rs.getString("nombre"));
                per.setDescripcion(rs.getString("descripcioncorta"));
                per.setDetalle(rs.getString("detalle"));
                per.setValor(""+rs.getDouble("valor"));
                per.setPalabrasClaves(rs.getString("palabrasclave"));
                per.setEstado(rs.getString("estado"));
                list.add(per);
                
                
            }
        }
        catch(Exception e){
        
            System.out.println("Error AQUI"+e);
        }
        return list;
        
    }

    @Override
    public Producto list(int id) {
        
        Producto producto=new Producto();
        String sql="select * from producto where id="+id;
        try{
        
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                producto.setId(rs.getInt("id"));
                producto.setReferencia(rs.getString("referencia"));
                producto.setNombre(rs.getString("nombre"));
                producto.setDescripcion(rs.getString("descripcioncorta"));
                producto.setDetalle(rs.getString("detalle"));
                producto.setValor(""+rs.getDouble("valor"));
                producto.setPalabrasClaves(rs.getString("palabrasclave"));
                producto.setEstado(rs.getString("estado"));
                
                
                
            }
        }
        catch(Exception e){
        
            System.out.println("Error AQUI"+e);
        }
        
        
        return producto;
    }

    

    @Override
    public boolean add(Producto pr) {
       
        String sql="insert into producto(referencia,nombre,descripcioncorta,detalle,valor) values ('"+pr.getReferencia()+"','"+pr.getNombre()+"','"+pr.getDescripcion()+"','"+pr.getDetalle()+"','"+pr.getValor()+"')";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        
        }catch(Exception e){}
        return false;
    }

    @Override
    public boolean edit(Producto pr) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
