package modelo;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
public class UsuarioDao implements Validar{
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    @Override
    public int validar(Usuarios usuario) {
        String sql = "select * from usuarios where nombre_usuario =? and password=?";
        try {
            con=cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1,usuario.getNombre_usuario());
            ps.setString(2,usuario.getPassword());
            rs = ps.executeQuery();
            while(rs.next()) {
                usuario.setNombre_usuario(rs.getString("nombre_usuario"));
                usuario.setPassword(rs.getString("password"));
                r=1;
            }
            if (r==1) {
                return 1;
            }
            else {
                return 0;
            }
        } catch (Exception e) {
            return 0;
        }
        
        
        
        
    }
 
}
