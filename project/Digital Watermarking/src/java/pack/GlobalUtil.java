package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GlobalUtil {

   

    public static ResultSet getResultSet(String sql) throws Exception {
        Connection cn = DBConnection.getCon();
        PreparedStatement ps = cn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        return rs;
    }

  

}
