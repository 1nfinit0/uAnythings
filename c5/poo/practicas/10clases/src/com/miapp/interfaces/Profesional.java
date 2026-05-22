package src.com.miapp.interfaces;

public class Profesional extends Trabajador {

  private Double retencionDeImpuestos;

  public Profesional(String nombre, String apellido, String estadoCivil, Double sueldoBasico, Double bonificacion, Double descuento, String especialidad, Double retencionDeImpuestos) {
    super(nombre, apellido, estadoCivil, sueldoBasico, bonificacion, descuento, "Profesional");
    this.retencionDeImpuestos = retencionDeImpuestos;
  }

  public Double getRetencionDeImpuestos() {
    return retencionDeImpuestos;
  }

  public void setRetencionDeImpuestos(Double retencionDeImpuestos) {
    this.retencionDeImpuestos = retencionDeImpuestos;
  }

  @Override
  public void mostrarSueldoNeto() {
    Double sueldoNeto = getSueldoBasico() + getBonificacion() - getDescuento() - getRetencionDeImpuestos();
    System.out.println("Sueldo Neto: " + sueldoNeto);
  }

}