package db;


import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author lomba
 */
public class DatabaseQ {
    
    private final Connection con;
    
    public DatabaseQ() throws URISyntaxException, SQLException{
        con = getConnection();
    }
    
    public ResultSet getTodas() throws SQLException{
        Statement stmt = con.createStatement();
        return stmt.executeQuery("Select * from preguntas");
    }
    
    public int savePregunta(byte[] pregunta, String examen, char respuesta, int precio, String embed) throws SQLException{
        PreparedStatement stmt = con.prepareStatement("INSERT INTO Preguntas VALUES(?, '" + examen + "', '" + respuesta + "', ?, ?)");
        stmt.setBytes(1, pregunta);
        stmt.setInt(2, precio);
        stmt.setString(3, embed);
        return stmt.executeUpdate();
    }
    
    public int saveExamen(byte[] examen, String desc) throws SQLException{
        PreparedStatement stmt = con.prepareStatement("INSERT INTO examenes VALUES(?, ?)");
        stmt.setBytes(1, examen);
        stmt.setString(2, desc);
        return stmt.executeUpdate();
    }
    
    public void close() throws SQLException{
        con.close();
    }
    
    private static Connection getConnection() throws URISyntaxException, SQLException {
        String dbUrl = System.getenv("JDBC_DATABASE_URL");
        String uname = System.getenv("JDBC_DATABASE_USERNAME");
        String pwd = System.getenv("JDBC_DATABASE_PASSWORD");
        return DriverManager.getConnection(dbUrl, uname, pwd);
    }
    
}
