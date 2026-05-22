package src.com.miapp.interfaces;

public class Tecnico extends Trabajador {

  private Double bonificacionEspecial;

  public Tecnico(String nombre, String apellido, String estadoCivil, Double sueldoBasico, Double bonificacion, Double descuento, String especialidad, Double bonificacionEspecial) {
    super(nombre, apellido, estadoCivil, sueldoBasico, bonificacion, descuento, "Tecnico");
    this.bonificacionEspecial = bonificacionEspecial;
  }  

  public Double getBonificacionEspecial() {
    return bonificacionEspecial;
  }

  public void setBonificacionEspecial(Double bonificacionEspecial) {
    this.bonificacionEspecial = bonificacionEspecial;
  }

  @Override
  public void mostrarSueldoNeto() {
    Double sueldoNeto = getSueldoBasico() + getBonificacion() + getBonificacionEspecial() - getDescuento();
    System.out.println("Sueldo Neto: " + sueldoNeto);
  }

}
