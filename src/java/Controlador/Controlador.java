/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Empresa;
import Modelo.Producto;
import ModeloDAO.EmpresaDAO;
import ModeloDAO.ProductoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    String listar="vistas/listar.jsp";
    String add="vistas/agregarProducto.jsp";
    String edit="vistas/editarProducto.jsp";
    String tabla="vistas/tablaProductos.jsp";
    String empresa="vistas/agregarEmpresa.jsp";
    String index="index.jsp";
    
    Producto p=new Producto();
    Empresa e=new Empresa();
    EmpresaDAO ea=new EmpresaDAO();
    ProductoDAO dao= new ProductoDAO();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorProducto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorProducto at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equals("listar")){
        
            acceso=listar;
        }else if(action.equalsIgnoreCase("add")){
        
            acceso=add;
        }else if(action.equalsIgnoreCase("addProducto")){
        
            String referencia=request.getParameter("txtReferencia");
            String nombre=request.getParameter("txtNombre");
            String descripcion=request.getParameter("txtDescripcion");
            String detalle=request.getParameter("txtDetalle");
            String valor=request.getParameter("txtValor");
            p.setReferencia(referencia);
            p.setNombre(nombre);
            p.setDescripcion(descripcion);
            p.setDetalle(detalle);
            p.setValor(valor);
            dao.add(p);
            acceso=listar;
            
        }else if(action.equalsIgnoreCase("tabla")){
            acceso=tabla;
        }else if(action.equalsIgnoreCase("empresa")){
        
            acceso=empresa;
        }else if(action.equalsIgnoreCase("addEmpresa")){
        
            String nombre=request.getParameter("txtNombreE");
            String somos=request.getParameter("txtSomos");
            String telefono=request.getParameter("txtTelefono");
            String email=request.getParameter("txtEmail");
            e.setNombre(nombre);
            e.setQuienessomos(somos);
            e.setTelefono(telefono);
            e.setEmail(email);
            ea.add(e);
            acceso=index;
            
            
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
