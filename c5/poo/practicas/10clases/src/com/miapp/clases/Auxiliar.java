package src.com.miapp.clases;

public class Auxiliar extends Trabajador {

  private double bonificacionRiesgo;

  public Auxiliar(String codigo, String apellidos, String nombres, String categoria, double sueldoBasico, double bonificacion, double descuento, double bonificacionRiesgo) {
    super(codigo, apellidos, nombres, categoria, sueldoBasico, bonificacion, descuento);
    this.bonificacionRiesgo = bonificacionRiesgo;
  }

  // Constructor:
  public Auxiliar(String nombre) {
    super("", "", nombre, "Auxiliar", 0.0, 0.0, 0.0);
    this.bonificacionRiesgo = 0.0;
  }

  public double getBonificacionRiesgo() {
    return bonificacionRiesgo;
  }

  public void setBonificacionRiesgo(double bonificacionRiesgo) {
    this.bonificacionRiesgo = bonificacionRiesgo;
  }

  public double calcularSueldo() {
    double sueldo = getSueldoBasico() 
                  * (1 + getBonificacion()/100.0) 
                  * (1 - getDescuento()/100.0) 
                  * (1 + getBonificacionRiesgo()/100.0);
    return sueldo;
}
}
