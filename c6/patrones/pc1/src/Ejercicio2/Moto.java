package Ejercicio2;

public class Moto extends Vehiculo implements Motor{

  public Moto(String placa) {
    super(placa);
  }
  @Override
  public void desplazar() {
    System.out.println(placa + ": motor a combustion encendido");
  }

  @Override
  public void encenderMotor() {
    System.out.println(placa + ": motor del auto encendido");
  }

  @Override
  public void cargarCombustible(double litros) {
    System.out.println(placa + ": se cargaron " + litros + " litros de combustible");
  }

  @Override
  public void cambiarAceite() {
    System.out.println(placa + ": aceite del auto cambiado");
  }
}
