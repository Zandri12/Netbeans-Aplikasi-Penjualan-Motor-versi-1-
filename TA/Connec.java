/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package TA;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author zandri
 */
public class Connec {

    public static Connection getConnection(){

        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dealer", "root", "");
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

        return con;
    }
}
