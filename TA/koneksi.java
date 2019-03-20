/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package TA;
import java.sql.*;
import javax.swing.JOptionPane;


/**
 *
 * @author zandri
 */
public class koneksi {
    private static Connection con;
    public koneksi(){

    }
    public static Connection getConnection(){
        try{
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dealer","root","");
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null,"Gagal Koneksi");
        }
        return con;
    }

}
