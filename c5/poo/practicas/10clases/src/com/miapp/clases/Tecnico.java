package src.com.miapp.clases;

public class Tecnico extends Trabajador {
  private double bonificacionEspecial;

  public Tecnico(String codigo, String apellidos, String nombres, String categoria, double sueldoBasico, double bonificacion, double descuento, double bonificacionEspecial) {
    super(codigo, apellidos, nombres, categoria, sueldoBasico, bonificacion, descuento);
    this.bonificacionEspecial = bonificacionEspecial;
  }

    // Constructor: 
  public Tecnico(String nombre) {
    super("", "", nombre, "Tecnico", 0.0, 0.0, 0.0);
    this.bonificacionEspecial = 0.0;
  }

  public double getBonificacionEspecial() {
    return bonificacionEspecial;
  }

  void setBonificacionEspecial(double bonificacionEspecial) {
    this.bonificacionEspecial = bonificacionEspecial;
  }

  public double calcularSueldo() {
    double sueldo = getSueldoBasico() 
                  * (1 + getBonificacion()/100.0) 
                  * (1 - getDescuento()/100.0) 
                  * (1 + getBonificacionEspecial()/100.0);
    return sueldo;
}

}
