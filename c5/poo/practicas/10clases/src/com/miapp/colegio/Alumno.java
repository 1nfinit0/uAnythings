package src.com.miapp.colegio;

public abstract class Alumno {
    private int codigo;
    private String apellido;
    private String nombre;
    private Character sexo;
    private int ex_parcial;
    private int ex_final;
    private int prom_practica;
    
    public Alumno(int codigo, String apellido, String nombre, Character sexo, int ex_parcial, int ex_final, int prom_practica) {
        this.codigo = codigo;
        this.apellido = apellido;
        this.nombre = nombre;
        this.sexo = sexo;
        this.ex_parcial = ex_parcial;
        this.ex_final = ex_final;
        this.prom_practica = prom_practica;
    }
    public int getCodigo() {
      return codigo;
    }
    public String getApellido() {
      return apellido;
    }
    public String getNombre() {
      return nombre;
    }
    public Character getSexo() {
      return sexo;
    }
    public int getEx_parcial() {
      return ex_parcial;
    }
    public int getEx_final() {
      return ex_final;
    }
    public int getProm_practica() {
      return prom_practica;
    }
    public void setCodigo(int codigo) {
      this.codigo = codigo;
    }
    public void setApellido(String apellido) {
      this.apellido = apellido;
    }
    public void setNombre(String nombre) {
      this.nombre = nombre;
    }
    public void setSexo(Character sexo) {
      this.sexo = sexo;
    }
    public void setEx_parcial(int ex_parcial) {
      this.ex_parcial = ex_parcial;
    }
    public void setEx_final(int ex_final) {
      this.ex_final = ex_final;
    }
    public void setProm_practica(int prom_practica) {
      this.prom_practica = prom_practica;
    }
    public Alumno() {
    }
    public abstract double calcularPromedio();    
}
