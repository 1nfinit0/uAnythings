package src.com.miapp.interfaces;

public abstract class Trabajador implements PrintAndShow {
  private String nombre;
  private String apellido;
  private String estadoCivil;
  private Double sueldoBasico;
  private Double bonificacion;
  private Double descuento;
  private String especialidad = "N/A";

  public Trabajador(String nombre, String apellido, String estadoCivil, Double sueldoBasico, Double bonificacion, Double descuento, String especialidad) {
    this.nombre = nombre;
    this.apellido = apellido;
    this.estadoCivil = estadoCivil;
    this.sueldoBasico = sueldoBasico;
    this.bonificacion = bonificacion;
    this.descuento = descuento;
    this.especialidad = especialidad; 
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getApellido() {
    return apellido;
  }

  public void setApellido(String apellido) {
    this.apellido = apellido;
  }

  public String getEstadoCivil() {
    return estadoCivil;
  }

  public void setEstadoCivil(String estadoCivil) {
    this.estadoCivil = estadoCivil;
  }

  public Double getSueldoBasico() {
    return sueldoBasico;
  }

  public void setSueldoBasico(Double sueldoBasico) {
    this.sueldoBasico = sueldoBasico;
  }

  public Double getBonificacion() {
    return bonificacion;
  }

  public void setBonificacion(Double bonificacion) {
    this.bonificacion = bonificacion;
  }

  public Double getDescuento() {
    return descuento;
  }

  public void setDescuento(Double descuento) {
    this.descuento = descuento;
  }

  public String getEspecialidad() {
    return especialidad;
  }

  public void setEspecialidad(String especialidad) {
    this.especialidad = especialidad;
  }

  public void imprimirDatos() {
    System.out.println("Nombre: " + getNombre());
    System.out.println("Apellido: " + getApellido());
    System.out.println("Estado Civil: " + getEstadoCivil());
    System.out.println("Sueldo Básico: " + getSueldoBasico());
    System.out.println("Bonificación: " + getBonificacion());
    System.out.println("Descuento: " + getDescuento());
    System.out.println("Especialidad: " + getEspecialidad());
  }

  public void mostrarSueldoNeto() {

    Double sueldoFinal = getSueldoBasico() + getBonificacion() - getDescuento();
    System.out.println("Sueldo Neto: " + sueldoFinal);

  }
}
