package db;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.jdbc.JdbcConnectionSource;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author lomba
 */
public class DatabaseQ {
    
    private static final String URL = "jdbc:sqlite:preguntas.db";
    private static DatabaseQ db;
    private static ConnectionSource src;
    
    private Dao<Pregunta, String> qDao;
    
    private DatabaseQ() {
    }

    public static DatabaseQ getInstance() throws SQLException {
        if (db == null) {
            db = new DatabaseQ();
            db.createTables();
            Pregunta p = new Pregunta("The man opened his eyes.\n" +
"\n" +
"He lay on his back, looking up through a canopy of delicate green toward the darkening blue of the sky. Stalks of bamboo were rustling in a warm, drowsy breeze. He could feel through his bruises (and a tremendous headache) that the ground beneath him was plush with fallen leaves. It was quiet here, under the bamboo. The air tasted faintly of salt, and he could hear waves in the distance.\n" +
"\n" +
"Something snapped a twig to the man's left. He startled and spun his head searching for the source of the sound, then froze.","d","m","p");
            db.addPregunta(p);
        }
        return db;
    }
    
    public void createTables() throws SQLException {
        src = new JdbcConnectionSource(URL);
        TableUtils.createTableIfNotExists(src, Pregunta.class);
        qDao = DaoManager.createDao(src, Pregunta.class);
    }
    
    public String addPregunta(Pregunta p) throws SQLException{
        return qDao.createOrUpdate(p).toString();
    }
    
    public List<Pregunta> getMateria(String materia) throws SQLException{
        QueryBuilder<Pregunta, String> qb = qDao.queryBuilder();
        qb.where().eq(Pregunta.MATERIA, materia);
        return qDao.query(qb.prepare());
    }
    
    public List<Pregunta> getParcial(String materia) throws SQLException{
        QueryBuilder<Pregunta, String> qb = qDao.queryBuilder();
        qb.where().eq(Pregunta.MATERIA, materia);
        return qDao.query(qb.prepare());
    }
    
    public List<Pregunta> getDepartamento(String depo) throws SQLException{
        QueryBuilder<Pregunta, String> qb = qDao.queryBuilder();
        qb.where().eq(Pregunta.DEPARTAMENTO, depo);
        return qDao.query(qb.prepare());
    }
    
    public Pregunta getPregunta(String p) throws SQLException{
        Pregunta r = null;
        r = qDao.queryForId(p);
        return r;
    }
    
    public List<Pregunta> getPreguntas() throws SQLException{
        return qDao.queryForAll();
    }
    
    public void close() {
        if (src != null) {
            src.closeQuietly();
        }
    }
    
}
