package db;


import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author lomba
 */
public class DatabaseQ {
    
    private Connection con;
    
    public DatabaseQ() throws URISyntaxException, SQLException{
        con = getConnection();
    }
    
    public int table() throws SQLException{
        Statement stmt = con.createStatement();
        return stmt.executeUpdate("CREATE TABLE Preguntas (Pregunta String, Parcial String, Tema String, Materia String, Departamento String, Embed String)");
    }
    
    public void close() throws SQLException{
        con.close();
    }
    
    private static Connection getConnection() throws URISyntaxException, SQLException {
        URI dbUri = new URI(System.getenv("DATABASE_URL"));

        String username = dbUri.getUserInfo().split(":")[0];
        String password = dbUri.getUserInfo().split(":")[1];
        String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + dbUri.getPath();

        return DriverManager.getConnection(dbUrl, username, password);
    }
    
}
