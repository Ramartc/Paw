/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ramartc
 */
public class GestorBD {
   /* static{
        try{
            Class.forName("");
        }catch (ClassNotFoundException ex){
            Logger.getLogger(GestorBD.class.getName()).Log(Level.SEVERE, null, ex);
        }
    }*/
    
    public List<String> getArticulosLike(String nombre) throws SQLException { 
    List<String> articulo = new ArrayList();
    Connection con = null;
    try {
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electrosa?serverTimezone=UTC", "root", "root");
      Statement stm = con.createStatement();
      String sql = "SELECT nombre FROM articulo WHERE nombre like '%" + nombre + "%'";

      ResultSet res = stm.executeQuery(sql);
      while (res.next()) {
               String codigo=res.getString("CODIGO");
               String nomb=res.getString("NOMBRE");
               Double pvp=res.getDouble("PVP");
               String tipo=res.getString("TIPO");
               String fabricante=res.getString("FABRICANTE");
               String foto=res.getString("foto");
               String descripcion=res.getString("descripcion");
               String a= new String(codigo + nomb+pvp+tipo+fabricante+foto+descripcion);
               articulo.add(a);
      }
      res.close();
      stm.close(); 
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      if (con != null) {
        try {
          con.close();
        } catch (SQLException ex) {
          ex.printStackTrace();
        }
      }
    }
    return articulo;
  }
    
    public static void main (String [] args) throws SQLException{
        GestorBD g=new GestorBD();
            List<String> articulos =g.getArticulosLike("SCi");
            for(String a: articulos){
                System.out.println(a);
            }
    }
}

    
 

