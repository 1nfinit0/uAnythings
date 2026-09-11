package Ejercicio2;

public abstract class Vehiculo {

  protected String placa;
  protected double litrosTanque;

  public Vehiculo(String placa) {
    this.placa = placa;
  }

  public abstract void desplazar();

  public void encenderMotor() {
    System.out.println(placa + ": no tiene motor que encender");
  }

  public void cargarCombustible(double litros) {
    System.out.println(placa + ": no requiere combustible");
  }

  public void cambiarAceite() {
    System.out.println(placa + ": no requiere cambio de aceite");
  }
}
