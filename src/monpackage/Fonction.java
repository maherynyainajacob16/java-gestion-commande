package monpackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Fonction {
    public static int compteData(String tableNom)   
    {
        int total = 0;
        Connection con = MyConnection.getconnection();
        
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT COUNT(*) AS 'total' FROM "+tableNom);
            while(rs.next()){
            total = rs.getInt(1);
        }
        } catch (SQLException ex) {
            Logger.getLogger(Fonction.class.getName()).log(Level.SEVERE, null, ex);
        }
        return total;
    }
}