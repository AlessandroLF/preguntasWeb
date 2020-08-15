package db;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable(tableName = "Preguntas")
public class Pregunta {
    
    public static final String PREGUNTA_C = "texto";
    public static final String DEPARTAMENTO = "departamento";
    public static final String MATERIA = "materia";
    public static final String PARCIAL = "parcial";
    
    @DatabaseField(canBeNull = false, id = true, columnName = PREGUNTA_C)
    private String texto;
    
    @DatabaseField(canBeNull = false, columnName = DEPARTAMENTO)
    private String departamento;
    
    @DatabaseField(canBeNull = false, columnName = MATERIA)
    private String materia;
    
    @DatabaseField(canBeNull = false, columnName = PARCIAL)
    private String parcial;
    
    public Pregunta(){
        
    }

    public Pregunta(String pregunta, String departamento, String materia, String parcial) {
        this.texto = pregunta;
        this.departamento = departamento;
        this.materia = materia;
        this.parcial = parcial;
    }

    public String getTexto() {
        return texto;
    }

    public String getDepartamento() {
        return departamento;
    }

    public String getMateria() {
        return materia;
    }

    public String getParcial() {
        return parcial;
    }
    
}
