package src.com.miapp.clases;

public abstract class Trabajador {
  private String codigo;
  private String apellidos;
  private String nombres;
  private String categoria;
  private double sueldoBasico;
  private double bonificacion;
  private double descuento;

  public Trabajador(String codigo, String apellidos, String nombres, String categoria, double sueldoBasico, double bonificacion, double descuento) {
    this.codigo = codigo;
    this.apellidos = apellidos;
    this.nombres = nombres;
    this.categoria = categoria;
    this.sueldoBasico = sueldoBasico;
    this.bonificacion = bonificacion;
    this.descuento = descuento;
  }

  public Trabajador() {

  }

  public String getCodigo() {
    return codigo;
  }

  public String getApellidos() {
    return apellidos;
  }

  public String getNombres() {
    return nombres;
  }

  public String getCategoria() {
    return categoria;
  }

  public double getSueldoBasico() {
    return sueldoBasico;
  }

  public double getBonificacion() {
    return bonificacion;
  }

  public double getDescuento() {
    return descuento;
  }

  public void setCodigo(String codigo) {
    this.codigo = codigo;
  }

  public void setApellidos(String apellidos) {
    this.apellidos = apellidos;
  }

  public void setNombres(String nombres) {
    this.nombres = nombres;
  }

  public void setCategoria(String categoria) {
    this.categoria = categoria;
  }

  public void setSueldoBasico(double sueldoBasico) {
    this.sueldoBasico = sueldoBasico;
  }

  public void setBonificacion(double bonificacion) {
    this.bonificacion = bonificacion;
  }

  public void setDescuento(double descuento) {
    this.descuento = descuento;
  }

  public abstract double calcularSueldo();

  public String saludar() {
    return "Hola, soy " + nombres + " " + apellidos + ", un trabajador de categoría " + categoria + ".";
  }
}